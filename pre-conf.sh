#!/bin/bash

# installing opensim-0.9.0.0
cd /opt/
wget http://opensimulator.org/dist/opensim-0.9.0.0.tar.gz
tar xvfvz opensim-0.9.0.0.tar.gz
mv /opt/opensim-0.9.0.0 /opt/opensim
rm opensim-0.9.0.0.tar.gz
