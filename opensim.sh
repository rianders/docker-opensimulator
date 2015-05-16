#!/bin/sh
### In opensim.sh (make sure this file is chmod +x):
# `/sbin/setuser mysql` runs the given command as the user `mysql`.
# If you omit that part, the command will be run as root.

cd /opt/opensim-0.8.1/bin/
exec mono ./OpenSim.exe >>/var/log/opensim.log 2>&1
