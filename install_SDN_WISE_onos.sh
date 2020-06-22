#!/bin/bash
## install_SDN_WISE_onos.sh ########################################################################
#
####################################### Description ################################################
#
# This script is used to install the SDN-WISE along with the needed libraries and the ONOS controller 
#    in a clean installation of Ubuntu.
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

# Get the user name of the user
USER=$(whoami)

# Update to Java 8 and install Ant and Maven
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install net-tools openjdk-8-jdk ant maven git curl openvswitch-switch -y

# Setup environment variables
latestJdk=$(ls -lrt /usr/lib/jvm | grep "java-8-openjdk" | tail -1 | awk -F' ' '{print $9}')
echo "JAVA_HOME=/usr/lib/jvm/$latestJdk" >> ~/.bashrc
source ~/.bashrc

# Download sdn-wise-contiki
cd ~
sudo -u $USER git clone git://github.com/sdnwiselab/sdn-wise-contiki

# Download ONOS
cd ~
sudo -u $USER git clone git://github.com/sdnwiselab/onos
sudo -u $USER git checkout onos-sdn-wise-1.0

# Download Mininet
cd ~
sudo -u $USER git clone git://github.com/mininet/mininet

# Setup environment variables
echo "export ONOS_ROOT=~/onos" >> ~/.bashrc
source ~/.bashrc
source $ONOS_ROOT/tools/dev/bash_profile

# Install Mininet
mininet/util/install.sh -nfv

# Download sdn-wise subprojects
cd sdn-wise-contiki 
sudo -u $USER git submodule update --init
cd contiki/tools/cooja 
sudo -u $USER git submodule update --init 
cd ~

# Finish message
echo "The installations finished, source again the bashrc or exit and login again."