#!/bin/bash
## functions.sh ####################################################################################
#
####################################### Description ################################################
#
# This script is holding the functions needed by the scripts.
# Source this script in order to use the Functions.
#
#
#
####################################### Arguments ##################################################
#
# No argument is required
#
####################################################################################################

function Log {
# Writes the argument as log for the notification
# $1: the message that we want to log
#
   typeset msg=$1
   typeset logline="<$(date +%d%b%Y' '%H:%M:%S)> $msg \n"
   printf "%b\n" "$logline" >&1
}