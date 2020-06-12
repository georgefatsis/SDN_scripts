#!/bin/bash
## 2start_onos.sh ##################################################################################
#
####################################### Description ################################################
#
# This script is used to start ONOS Shell
#
#
#
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

. ./functions.sh

Log "Onos shell is starting "
Log " When onos is ready write: app activate org.onosproject.sdnwise "
cd ~/onos && tools/test/bin/onos localhost