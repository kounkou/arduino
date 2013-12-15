#!/bin/bash

#!/bin/bash

#----------------------------------------------------
#
#   File        : vars.sh
#   Code        : Bourne shell
#   By          : godbod
#
#   Description : 
#      Script for arduino build process automation
#
#   Usage       : vars.sh
#
#   History     :
#   8 dec 2013   godbod   initial version
#
#----------------------------------------------------

# Exporting global vars
echo 'Exporting global vars...'

export AVR_GCC=/usr/bin/avr-gcc
export AVR_OBJ=/usr/bin/avr-objcopy
export AVR_DUD=/usr/bin/avrdude
