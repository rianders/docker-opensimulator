#!/bin/bash


set -e

if [ -f /etc/configured ]; then
        echo 'already configured'
else
      #code that need to run only one time ....
        
        #needed for fix problem with ubuntu and cron
        update-locale 
        date > /etc/configured
fi

#configuration for the first time.

if [ -f /sbin/after_install ]; then

/sbin/after_install

fi

cd /opt/opensim-0.8.1/bin/
exec screen -S OpenSim -d -m mono ./OpenSim.exe
