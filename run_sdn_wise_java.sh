#!/bin/bash
## run_sdn_wise_java.sh ############################################################################
#
####################################### Description ################################################
#
# This script starting the SDN-WISE Java basic implementation
#
####################################### Arguments ##################################################
#
# No arguments required
#
####################################################################################################

. ./functions.sh

Log "SDN-WISE simple implementation is starting now"
cd ~/sdn-wise-java/ctrl/target
findBuild=$(ls -lrt | grep jar-with-dependencies | tail -1 | awk -F' ' '{print $9}')
java -jar $findBuild