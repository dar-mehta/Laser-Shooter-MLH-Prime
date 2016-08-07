#include <iostream>
#include <fstream>
int main(int argc, char* argv[])
{
	//open arduino device file (linux)
    std::ofstream arduino;
	arduino.open("/dev/cu.usbmodem14211");
	//write to it
    	arduino << "Hello World" << std::endl;
	arduino.close();
	return 0;
}