#!/bin/bash
## install_CORAL_SDN.sh ############################################################################
#
####################################### Description ################################################
#
# This script is install the CORAL-SDN along with the needed libaries in a clean installation of
#   Ubuntu using a VM.
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
sudo apt-get install default-jdk ant maven git python-pip curl gcc-msp430 build-essential vim software-properties-common -y
latestJdk=$(ls -lrt /usr/lib/jvm | grep "java-8-openjdk" | tail -1 | awk -F' ' '{print $9}')
echo "JAVA_HOME=/usr/lib/jvm/$latestJdk" >> ~/.profile
echo "JRE_HOME=/usr/lib/jvm/$latestJdk" >> ~/.profile
echo "PATH=$PATH:$JRE_HOME/bin:$JAVA_HOME/binexport" >> ~/.profile
echo "export JAVA_HOME" >> ~/.profile
echo "export JRE_HOME" >> ~/.profile
echo "export PATH" >> ~/.profile

# source the updated profile 
source ~/.profile 

# Checkout contiki
cd ~
git clone https://github.com/georgefatsis/coral-sdn.git

# Copy Contiki to home
cp -r ~/coral-sdn/infrastructure-plane/contiki ~

# Install serial2pty in cooja
cd ~/contiki/tools/cooja/apps
rm -rf serial2pty
git clone https://github.com/cmorty/cooja-serial2pty.git serial2pty
cd serial2pty
ant jar
echo "org.contikios.cooja.Cooja.PLUGINS = + de.fau.cooja.plugins.Serial2Pty" > cooja.config
echo "org.contikios.cooja.Cooja.JARFILES = + serial2pty.jar" >> cooja.config
echo "DESCRIPTION = serial2pty" >> cooja.config

# Compile contiki 
cd ~/contiki/tools/cooja
ant clean
ant jar

# Copy the coral adapter to home
cd ~
cp -r ~/coral-sdn/control-plane/CORAL-SDN_Adapters/coral-sdn-adapter-COOJA-runtime ~
cd ~/coral-sdn-adapter-COOJA-runtime
chmod +x coral-sdn-adapter createSoftLinkCreationScript.py softLinkCreationScript

# Copy the controler to home 
cp -r ~/coral-sdn/control-plane/CORAL-SDN-Controller/ ~