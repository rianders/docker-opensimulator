#!/bin/sh
### In opensim.sh (make sure this file is chmod +x):
# `/sbin/setuser mysql` runs the given command as the user `mysql`.
# If you omit that part, the command will be run as root.

cd /opt/opensim-0.8.0.3/bin/
exec ./opensim-ode.sh >>/var/log/opensim.log 2>&1
