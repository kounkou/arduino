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
#   8 dec 2013   godbod   initial version
#
#----------------------------------------------------

# Exporting global vars
source /home/godbod/Classified/tools/global_vars/vars.sh

# Checking parameters
if [ $# -lt 1 ]
then
   echo "[Error] Wrong parameter!"
   echo "transfer.sh <file_to_send>"
   exit 1
fi

# Sending the file to arduino
${AVR_DUD} -F -V -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 115200 -U flash:w:$1
