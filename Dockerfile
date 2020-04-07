#Name of container: docker-opensimulator
#Version of container: 0.4.2
FROM mono:latest

MAINTAINER  Rick Anderson rianders@docs.rutgers.edu


RUN apt-get update && apt-get install -y \
    wget \
    screen 

##Adding Deamons to containers
# To add opensim deamon to runit		
RUN mkdir -p /etc/service/opensim		
COPY opensim.sh /etc/service/opensim/unrun		
RUN chmod +x /etc/service/opensim/unrun


#Pre-config script that needs to be run when container image is created 
#optionally include here additional software that needs to be installed or configured for some service running on the container.
COPY pre-conf.sh /sbin/pre-conf
RUN chmod +x /sbin/pre-conf ; sync \
    && /bin/bash -c /sbin/pre-conf \
    && rm /sbin/pre-conf


#Script to execute after install done and/or to create initial configuration
COPY after_install.sh /sbin/after_install
RUN chmod +x /sbin/after_install

# To allow access from outside of the container  to the container service at these ports
# Need to allow ports access rule at firewall too .  
EXPOSE 9000/tcp
EXPOSE 9000/udp

# Use baseimage-docker's init system.
CMD ["/sbin/after_install"]
