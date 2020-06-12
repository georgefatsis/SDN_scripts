#!/bin/bash
## run_contiki_sdn-controler.sh ####################################################################
#
####################################### Description ################################################
#
# This script starting the SDN-WISE Get started Java controler
#
####################################### Arguments ##################################################
#
# No arguments required
#
####################################################################################################

. ./functions.sh

Log "The controler 01-GetStarted is starting now"
cd ~/01-GetStarted
java -jar target/01-GetStarted.jar