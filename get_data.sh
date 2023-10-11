#!/bin/bash

# This script collects the serial number and asset tags from all connected iPads
# Configurator 2 and the automation tools need to be installed.

# By Jarrod Coombes
# v 0.1 - Initial release


#---------------------------------------------
#      Setup Block and Variables

# The output file
filename=device.csv

# Get the local path of the script
# dir="$(dirname "$(readlink -f "$0")")"
dir=.

# Append the file to it
out="${dir}/$filename"

#---------------------------------------------

echo
echo

echo Getting Serial number
serial=$(cfgutil get serialNumber)
# echo $serial
echo

echo Getting Identifier
identifier=$(cfgutil get deviceType)
# echo $identifier
echo

# Read in the Asset Tag from the user
read -p "Asset Tag:" asset

# Collect info on the condition of the Mac
read -p "Condition:" condition

echo
echo ----------------------------------------------------------
echo 
echo Asset Tag: $asset
echo Serial Number: $serial
echo Model Identifier: \"$identifier\"
echo Condition: \"$condition\"
echo
echo CSV Output: $asset,$serial,\"$identifier\",\"$condition\" 
echo 
echo ----------------------------------------------------------
echo

echo Writing to file to "${out}"
echo $asset,$serial,\"$identifier\",\"$condition\" >> "${out}"
echo Done
echo
echo

echo +------------------------------+
echo \|  Waiting for next device.  \|
echo +------------------------------+
