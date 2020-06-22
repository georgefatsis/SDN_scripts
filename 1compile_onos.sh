#!/bin/bash
## 1compile_onos.sh ################################################################################
#
####################################### Description ################################################
#
# This script is used to Start onos controler
#
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

. ./functions.sh

Log "Onos is starting"
cd ~/onos &&
tools/build/onos-buck build onos --show-output && tools/build/onos-buck run onos-local -- clean debug