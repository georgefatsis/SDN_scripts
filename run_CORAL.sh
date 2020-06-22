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

Log "CORAL simple impelmentation is starting now"
Log "cooja is starting"
gnome-terminal -e "bash -c \" ~/SDN_scripts/startcooja.sh; exec bash\" "
sleep 100;

Log "Coral Adapter is starting"
gnome-terminal -e "bash -c \" cd ~/coral-sdn-adapter-COOJA-runtime ; sudo ./coral-sdn-adapter; exec bash\" "
sleep 100;

Log "Starting CORAL Controler"
gnome-terminal -e "bash -c \" cd ~/CORAL-SDN-Controller ; java -jar CoralSDNControler.jar; exec bash\" "