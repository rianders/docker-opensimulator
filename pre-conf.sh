#!/bin/bash

# installing opensim-0.8.1
cd /opt/
wget http://opensimulator.org/dist/opensim-0.8.1.1.tar.gz
tar xvfvz opensim-0.8.1.1.tar.gz
mv /opt/opensim-0.8.1.1 /opt/opensim
rm opensim-0.8.1.1.tar.gz
