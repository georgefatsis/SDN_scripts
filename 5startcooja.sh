#!/bin/bash
## 5startcooja.sh ##################################################################################
#
####################################### Description ################################################
#
# This script is used to start Cooja
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

. ./functions.sh

Log " Cooja is starting"
cd ~/sdn-wise-contiki/contiki/tools/cooja/ && ant run
