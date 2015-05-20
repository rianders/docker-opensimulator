#!/bin/sh
### In after_install.sh (make sure this file is chmod +x):

# run initial configuration script ...
cd /opt/opensim-0.8.1/bin/
cp pCampBot.ini.example pCampBot.ini
./opensim-ode.sh

#remove itself
rm /sbin/after_install
