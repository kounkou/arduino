#!/bin/bash

#----------------------------------------------------
#
#   File        : transfer.sh
#   Code        : Bourne shell
#   By          : godbod
#
#   Description : 
#      Script for arduino build process automation
#
#   Usage       : transfer.sh <file_to_send>
#
#   History     :
#   8  dec 2013   godbod   initial version
#   15 dec 2013   godbod   corrected bug on vars.sh
#----------------------------------------------------

# Getting the absolute path
P=`dirname $0`

# Setting the global vars
source $P/../global_vars/vars.sh

# Checking parameters
if [ $# -lt 2 ]; then
   echo "[Error] Wrong parameter!"
   echo "the syntax is : $ transfer.sh <file_to_send> <ttyX>"
   # This will play the sound
   # aplay $P/../resources/test.wav >/dev/null 2>&1; 
   exit 1
fi

#-----------------------------------------------
# Sending the file to arduino, you might need to
# add your user to dialout group
# sudo adduser <username> dialout 
#-----------------------------------------------
${AVR_DUD} -F -V -c arduino -p ATMEGA328P -P /dev/$2 -b 115200 -U flash:w:$1
