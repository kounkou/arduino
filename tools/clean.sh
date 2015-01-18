#!/bin/bash

#----------------------------------------------------
#
#   File        : clean.sh
#   Code        : Bourne shell
#   By          : godbod
#
#   Description : 
#      Script for arduino build process automation
#
#   Usage       : clean.sh
#
#   History     :
#   8 dec 2013   godbod   initial version
#
#----------------------------------------------------

# cleaning object file
if [ -f outbin.o ]
then 
   rm outbin.o 
fi

# cleaning hex file
if [ -f outbin.hex ]
then
   rm outbin.hex
fi

# cleaning arm executable
if [ -f outbin ]
then
   rm outbin
fi

exit 0
