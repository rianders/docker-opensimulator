#!/bin/sh
### In opensim.sh (make sure this file is chmod +x):


cd /opt/opensim-0.8.1/bin/
exec screen -S OpenSim -D -m mono ./OpenSim.exe
