//
//  test.cpp
//  Balloon_Tracking
//
//  Created by Dar Mehta on 2016-08-07.
//  Copyright © 2016 Dar Mehta. All rights reserved.
//

#include <stdio.h>


/*
 using namespace std;
 using namespace cv;
 
 IplImage* getThresholdedImage(IplImage*);
 
 int main(int argc, const char * argv[]) {
 // Initialize capturing live feed from the camera
 CvCapture* capture = 0;
 capture = cvCaptureFromCAM(0);
 
 // Couldn't get a device? Throw an error and quit
 if(!capture) {
 printf("Could not initialize capturing...");
 return -1;
 }
 
 cvNamedWindow("video");
 cvNamedWindow("thresh");
 
 IplImage* imgScribble = NULL;
 
 while (true){
 IplImage* frame = cvQueryFrame(capture);
 if (!frame){ break; }
 
 if (!imgScribble) {
 imgScribble = cvCreateImage(cvGetSize(frame), 8, 3);
 }
 IplImage* imgYellowThresh = getThresholdedImage(frame);
 
 cvShowImage("thresh", imgYellowThresh);
 cvShowImage("video", frame);
 cout << "Reached end of while loop." << endl;
 }
 return 0;
 }
 
 IplImage* getThresholdedImage(IplImage* img) {
 // Convert the image into an HSV image
 IplImage* imgHSV = cvCreateImage(cvGetSize(img), 8, 3);
 cvCvtColor(img, imgHSV, CV_BGR2HSV);
 IplImage* imgThreshed = cvCreateImage(cvGetSize(img), 8, 1);
 cvInRangeS(imgHSV, cvScalar(75, 0, 0, 0), cvScalar(130, 110, 140, 0), imgThreshed);
 
 cvReleaseImage(&imgHSV);
 return imgThreshed;
 }
 */
