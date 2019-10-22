#!/bin/sh

cd /home/pi/

# Copy Clean Script to /home/pi/
cd TouchRTKStation/install/
cp Clean-all.sh /home/pi/
cp Clean-rtklib.sh /home/pi/
cd ../../
chmod +x Clean-all.sh
chmod +x Clean-rtklib.sh

# Update / Upgrade Raspbian Image
apt-get update -y
apt-get upgrade -y

# Install pyqt5 Raspbian Pixl-Desktop
apt-get install -y qt5-default pyqt5-dev pyqt5-dev-tools raspberrypi-ui-mods



# Install RTKLIB
git clone -b demo5 https://github.com/rtklibexplorer/RTKLIB.git
cd ./RTKLIB/app/str2str/gcc/
make
cd ../../rtkrcv/gcc/
make

# Install LCD Driver
#cd /home/pi/
#wget http://www.waveshare.com/w/upload/0/00/LCD-show-170703.tar.gz
#tar xzvf LCD*.tar.gz
#cd ./LCD-show/
#chmod +x LCD4-show
#./LCD4-show
