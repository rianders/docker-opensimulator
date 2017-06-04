#!/bin/bash

# installing opensim-0.8.2.1
cd /opt/
wget http://opensimulator.org/dist/opensim-0.9.0.0-rc2.tar.gz
tar xvfvz opensim-0.9.0.0-rc2.tar.gz
mv /opt/opensim-0.9.0.0-rc2 /opt/opensim
rm opensim-0.9.0.0-rc2.tar.gz
