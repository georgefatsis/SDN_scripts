#!/bin/bash
## install_sdn_wise_java.sh ########################################################################
#
####################################### Description ################################################
#
# This script is install the SDN-WISE along with the needed libaries and the Java SDN controler in a
#   clean installation of Ubuntu.
#
#
#
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

# Update to Java 8 and install Ant and Maven
sudo apt-get update
sudo apt-get install openjdk-8-jdk maven librxtx-java git -y

# Setup environment variables
latestJdk=$(ls -lrt /usr/lib/jvm | grep "java-8-openjdk" | tail -1 | awk -F' ' '{print $9}')
echo "JAVA_HOME=/usr/lib/jvm/$latestJdk" >> ~/.bashrc
source ~/.bashrc

cd ~
git clone https://github.com/sdnwiselab/sdn-wise-java.git
cd ~/sdn-wise-java
mvn clean install
cd ctrl/build

# Finish message
echo "The installations finished, source again the bashrc or exit and login again."