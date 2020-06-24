#!/bin/bash
## run_CORAL.sh ####################################################################################
#
####################################### Description ################################################
#
# This script starting the CORAL-SDN Implementation
#
####################################### Arguments ##################################################
#
# No arguments required
#
####################################################################################################

. ./functions.sh

Log "CORAL simple implementation is starting now"
Log "cooja is starting"
gnome-terminal -e "bash -c \" ~/SDN_scripts/startcooja.sh; exec bash\" "
sleep 60;

Log "Starting CORAL Controller"
gnome-terminal -e "bash -c \" cd ~/CORAL-SDN-Controller ; java -jar CoralSDNController.jar; exec bash\" "
sleep 60; 

Log "Coral Adapter is starting"
gnome-terminal -e "bash -c \" cd ~/coral-sdn-adapter-COOJA-runtime ; sudo ./coral-sdn-adapter; exec bash\" "
