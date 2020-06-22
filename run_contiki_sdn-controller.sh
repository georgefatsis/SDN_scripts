#!/bin/bash
## run_contiki_sdn-controller.sh ####################################################################
#
####################################### Description ################################################
#
# This script starting the SDN-WISE Get started Java controller
#
####################################### Arguments ##################################################
#
# No arguments required
#
####################################################################################################

. ./functions.sh

Log "The controller 01-GetStarted is starting now"
cd ~/01-GetStarted
java -jar target/01-GetStarted.jar