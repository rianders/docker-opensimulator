#!/bin/sh
### In after_install.sh (make sure this file is chmod +x):

# run initial configuration script ...
cd /opt/opensim-0.8.1/bin/
./opensim-ode.sh

#rename   unrun to run script
mv /etc/service/opensim/unrun /etc/service/opensim/run

#remove itself
rm /sbin/after_install
