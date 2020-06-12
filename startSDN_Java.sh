#!/bin/bash
## startSDN_Java.sh ################################################################################
#
####################################### Description ################################################
#
# This wrapper script is used to executed all the other scripts needed in order to start Cooja and
#   the Java 01 controler for SDN-WISE.
#
#
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

. ./functions.sh

Log "Cooja is starting at a new terninal"
gnome-terminal -e "bash -c \" ~/SDN_scripts/startcooja.sh; exec bash\" "
sleep 100;

gnome-terminal -e "bash -c \" ~/SDN_scripts/run_contiki_sdn-controler.sh; exec bash\" "