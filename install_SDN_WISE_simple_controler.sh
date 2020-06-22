#!/bin/bash
## install_SDN_WISE_simple_controler.sh ############################################################
#
####################################### Description ################################################
#
# This script is used to install the SDN-WISE along with the needed libaries and the Java SDN 
#    controler in a clean installation of Ubuntu.
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

# Update to Java 8 and install Ant and Maven
sudo apt-get update
sudo apt-get install openjdk-8-jdk ant maven git -y

# Setup environment variables
latestJdk=$(ls -lrt /usr/lib/jvm | grep "java-8-openjdk" | tail -1 | awk -F' ' '{print $9}')
echo "JAVA_HOME=/usr/lib/jvm/$latestJdk" >> ~/.bashrc
source ~/.bashrc

# Checkout contiki
cd ~
git clone https://github.com/contiki-os/contiki

# Download sdn-wise-contiki
cd ~/contiki/tools
wget https://sdnwiselab.github.io/tools/sdn-wise_java.tar.gz
tar xvf sdn-wise_java.tar.gz
rm sdn-wise_java.tar.gz
cd cooja
git submodule update --init
ant jar_cooja
cd examples/sdn-wise_java
ant compile

# Download the controler
cd ~
wget http://sdn-wise.dieei.unict.it/tools/01-GetStarted.tar.gz
tar xvf 01-GetStarted.tar.gz
rm 01-GetStarted.tar.gz
cd ~/01-GetStarted
mvn package
cd ~

# Finish message
echo "The installations finished, source again the bashrc or exit and login again."