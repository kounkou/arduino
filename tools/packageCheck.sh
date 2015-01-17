#!/bin/bash

#----------------------------------------------------
#
#   File        : packageCheck.sh
#   Code        : Bourne shell
#   By          : godbod
#
#   Description : 
#      Script for arduino build process automation
#
#   Usage       : packageCheck.sh
#
#   History     :
#   13 dec 2013   godbod   initial version
#
#----------------------------------------------------

# Checking package 

# Getting the absolute path
P=`dirname $0`

# Defining the necessary packages
P1=gcc-avr
P2=avrdude
P3=avr-libc

status_P1=$(dpkg -s "$P1"|grep installed)
# echo checking for $P1 : $status_P1

status_P2=$(dpkg -s "$P2"|grep installed) 
# echo checking for $P2 : $status_P2

status_P3=$(dpkg -s "$P3"|grep installed)
# echo checking for $P3 : $status_P3

# Step 1 : checking the gcc-avr
if [ "" == "$status_P1" ]; then
      echo "$P1  isn't installed."
      aplay $P/../resources/test.wav >/dev/null 2>&1; 
      sudo apt-get install gcc-avr
elif [ "Status: unknown ok not-installed" == "$status_P1" ]; then
      echo "not correctly installed $P1"
      sudo apt-get install gcc-avr
else
      echo "$P1  is installed." 
fi

# Step 2 : checking the avrdude
if [ "" == "$status_P2" ]; then
      echo "$P2  isn't installed." 
      aplay $P/../resources/test.wav >/dev/null 2>&1; 
      sudo apt-get install avrdude
elif [ "Status: unknown ok not-installed" == "$status_P2" ]; then
      echo "not correctly installed $P2"
      sudo apt-get install avrdude
else
      echo "$P2  is installed." 
fi

# Step 3 : checking the avr-libc
if [ "" == "$status_P3" ]; then
      echo "$P3 isn't installed." 
      aplay $P/../resources/test.wav >/dev/null 2>&1; 
      sudo apt-get install avr-libc
elif [ "Status: unknown ok not-installed" == "$status_P3" ]; then
      echo "not correctly installed $P3"
      sudo apt-get install avr-libc
else
      echo "$P3 is installed." 
fi
