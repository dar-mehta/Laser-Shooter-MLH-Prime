#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
using namespace cv;
using namespace std;
int posX;
int posY;
int tarPosX;
int tarPosY;
int iLastX = -1;
int iLastY = -1;
int main(int argc, char** argv)
{
    VideoCapture cap(0);
    if ( !cap.isOpened() )
    {
        cout << "Cannot open the web cam" << endl;
        return -1;
    }
    namedWindow("Control", CV_WINDOW_AUTOSIZE);
    int iLowH = 170;
    int iHighH = 179;
    int iLowS = 150;
    int iHighS = 255;
    int iLowV = 60;
    int iHighV = 255;
    Mat imgTmp;
    cap.read(imgTmp);
    //Create a black image with the size as the camera output
    Mat imgLines = Mat::zeros( imgTmp.size(), CV_8UC3 );;
    int count = 0;
    while (true)
    {
        if (count == 15)
            imgLines = Mat::zeros(imgTmp.size(), CV_8UC3);
        Mat imgOriginal;
        bool bSuccess = cap.read(imgOriginal);
        if (!bSuccess)
        {
            cout << "Cannot read a frame from video stream" << endl;
            break;
        }
        Mat imgHSV;
        cvtColor(imgOriginal, imgHSV, COLOR_BGR2HSV);
        Mat imgThresholded;
        inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded);
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        Moments oMoments = moments(imgThresholded);
        double dM01 = oMoments.m01;
        double dM10 = oMoments.m10;
        double dArea = oMoments.m00;
        if (dArea > 10000)
        {
            posX = dM10 / dArea;
            posY = dM01 / dArea;
            if (iLastX >= 0 && iLastY >= 0 && posX >= 0 && posY >= 0)
                line(imgLines, Point(posX, posY), Point(iLastX, iLastY), Scalar(0, 0, 255), 2);
            tarPosX = 2 * posX - iLastX;
            tarPosY = posY + ((posY - iLastY) * .87);
            iLastX = posX;
            iLastY = posY;
        }
        imshow("Thresholded Image", imgThresholded);
        imgOriginal = imgOriginal + imgLines;
        imshow("Original", imgOriginal);
        count++;
        if (waitKey(30) == 27)
        {
            cout << "esc key is pressed by user" << endl;
            break;
        }
    }
    return 0;
}

/*
void Transmit()
{
    //open arduino device file (linux)
    std::ofstream arduino;
    arduino.open("/dev/cu.usbmodem14211");
    //write to it
        arduino << tarPosX && "," && tarPosY << std::endl;
    arduino.close();
    return 0;
}*/