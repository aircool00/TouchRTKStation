#!/bin/sh
cd /home/pi/

rm -rf TouchRTKStation
rm -rf RTKLIB
sudo rm -rf .config/autostart
cd ../../
cd /usr/local/bin
sudo rm str2str
sudo rm rtkrcv

reboot
