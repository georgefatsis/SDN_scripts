#!/bin/bash
## 4start_mininet.sh ###############################################################################
#
####################################### Description ################################################
#
# This script is used to start Mininet using the standard topology
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

. ./functions.sh

Log "Mininet is starting with the known topology"
cd ~/
sudo mn --topo tree,depth=2,fanout=3 --controller=remote