#!/bin/bash

# installing mono-4.0.1
cd /tmp
wget http://download.mono-project.com/sources/mono/mono-4.0.1.tar.bz2
tar xvjf mono-4.0.1.tar.bz2
cd /tmp/mono-4.0.1
./configure --prefix=/usr/local
make
make install
cd /tmp
rm -rf mono-4.0.1.tar.bz2
rm -rf /tmp/mono-4.0.1

#as default mono not trust any https certificate, in order to handle https download issue in mono we need to do
mozroots --import --sync


# installing opensim-0.8.1
cd /opt/
wget http://opensimulator.org/dist/opensim-0.8.1.tar.gz
tar xvfvz opensim-0.8.1.tar.gz
rm opensim-0.8.1.tar.gz
