#!/bin/bash
## start_Onos.sh ###################################################################################
#
####################################### Description ################################################
#
# This script is wrapper script and its usage is to start in a separate terminal all the scripts
#    needed for the SDN-WISE with ONOS.
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

. ./functions.sh
Log "Each script is starting at new terminal"
Log "1compile_onos is starting at a new terninal"
gnome-terminal -e "bash -c \" ~/SDN_scripts/1compile_onos.sh; exec bash\" "
sleep 100;

for x in 2start_onos.sh 3gui_onos.sh 4start_mininet.sh 5startcooja.sh; do
   Log "$x is starting at a new terminal"
   gnome-terminal -e "bash -c \" ~/SDN_scripts/$x; exec bash\" "
   sleep 80;
done
