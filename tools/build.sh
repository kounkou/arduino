#!/bin/bash

#----------------------------------------------------
#
#   File        : arduino.sh
#   Code        : Bourne shell
#   By          : godbod
#
#   Description : 
#      Script for arduino build process automation
#
#   Usage       : arduino.sh [-c] <file_to_compile>
#
#   History     :
#   8  dec 2013   godbod   initial version
#   13 dec 2013   godbod   added absolute path launching
#----------------------------------------------------

# Setting the absolute PATH to scripts
P=`dirname $0`

# Checking parameters
if [ $# -lt 1 ]
then
   echo "[Error] Wrong parameter!"
   echo "arduino.sh [-c] <file_to_compile>"
   exit 1
fi

# Checking for packages
source $P/packageCheck.sh

# Exporting global vars
source $P/../global_vars/vars.sh

# Checking the clean flag
if [ "$1" = "-c" ]
then
   Clean=1
   shift
else
   Clean=0
fi

# Cleaning the project if requested
if [ ${Clean} -eq 1 ]
then
   # We will implement the clean here 
   ./clean.sh
fi

# We will use this path to generate files at the right place
P1=`dirname $1`
# echo $P1

# Performing build steps
echo "Building with given file $1"
${AVR_GCC} -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o $P1/outbin.o $1 
if [ -f $P1/outbin.o ]
then
   echo "Generating outbin"
   ${AVR_GCC} -mmcu=atmega328p $P1/outbin.o -o $P1/outbin
fi
if [ -f $P1/outbin ]
then
   echo "Generating outbin.hex"
   ${AVR_OBJ} -O ihex -R .eeprom $P1/outbin $P1/outbin.hex 
fi
