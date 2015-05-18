#!/bin/bash

# installing mono-4.0.1
wget http://download.mono-project.com/sources/mono/mono-4.0.1.tar.bz2 \
  | tar -xjv --directory=/tmp
cd /tmp/mono-4.0.1
./configure --prefix=/usr/local
make
make install
cd /tmp
rm -rf /tmp/mono-4.0.1


# installing opensim-0.8.1
cd /opt/
wget http://opensimulator.org/dist/opensim-0.8.1.tar.gz
tar xvfvz opensim-0.8.1.tar.gz
rm opensim-0.8.1.tar.gz
