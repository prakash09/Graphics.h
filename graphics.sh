clear
tput bold;
echo "If during installation any error occurs for example removing something then remove it following the instructions on the screen and then run the script again";
tput sgr0;

echo " Press any key to continue....."
read var
clear

sudo apt-get install libsdl-image1.2
sudo apt-get install libsdl-image1.2-dev
sudo apt-get install guile-1.8
sudo apt-get install guile-1.8-dev
sudo apt-get install libsdl1.2debian-arts
sudo apt-get install libartsc0-dev
sudo apt-get install libaudiofile-dev
sudo apt-get install libesd0-dev
sudo apt-get install libdirectfb-dev
sudo apt-get install libdirectfb-extra
sudo apt-get install libfreetype6-dev
sudo apt-get install libxext-dev
sudo apt-get install x11proto-xext-dev
sudo apt-get install libfreetype6
sudo apt-get install libaa1
sudo apt-get install libaa1-dev
sudo apt-get install libslang2-dev
sudo apt-get install libasound2
sudo apt-get install libasound-dev
wget http://download.savannah.nongnu.org/releases/libgraph/libgraph-1.0.1.tar.gz

sudo tar xzvf libgraph-1.0.1.tar.gz
cd libgraph-1.0.1
./configure
sudo make
sudo make install
sudo cp /usr/local/lib/libgraph.* /usr/lib
clear
clear
clear
echo "Installation has completed sucessfully";
echo -e "\\n Enjoy!!!";
echo -e " \\n Run this sample program to check if it is working";
echo "
#include<graphics.h>
#include<stdio.h>
int main()
{
int gd,gm=VGAMAX;
int a;
gd=DETECT;
initgraph(&gd,&gm,NULL);
line(200,200,100,100);
scanf("%d",&a);
return 0;
} ";

echo "For compilation use: g++ filename.cpp -o filename.o -lgraph";

