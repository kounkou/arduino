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

# Defining the necessary packages
P1=gcc-avr
P2=avrdude
P3=avr-libc

# Step 1 : checking the gcc-avr
if dpkg -s "$P1" >/dev/null 2>&1; 
then
      echo "$P1 is installed." 
else
      echo "$P1 isn't installed."
      echo "Aborted! Please install $P1 with : apt-get install $P1"
      exit 
fi

# Step 2 : checking the avrdude
if dpkg -s "$P2" >/dev/null 2>&1; 
then
      echo "$P2 is installed." 
else
      echo "$P2 isn't installed." 
      echo "Aborted! Please install $P2 with : apt-get install $P2"
      exit
fi

# Step 3 : checking the avr-libc
if dpkg -s "$P3" >/dev/null 2>&1; 
then
      echo "$P3 is installed." 
else
      echo "$P3 isn't installed." 
      echo "Aborted! Please install $P3 with : apt-get install $P3"
      exit 
fi
