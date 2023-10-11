# Configurator_Data_Collection
Scripts used to collect data via Configurator. It comprises of 2 scripts:

- run.sh - The main script used to kick things off, this starts cfgutil in a loop to wait for devices to be plugged in and hands it the sub script to do the actual data collection.

- get-data.sh - The main script where all the magic happens. It runs cfgutil to grab the serial number and the model identifier, then prompts the user for an asset tag and any notes about the devices confition. It writes all this data out to a CSV.

Simple drop these two scripts into a folder, then execute `run.sh`, plug in an iPad and follow the onscreen prompts.

## Requirements
You need to install Configurator 2 and the Automation tools (In Apple Configurator , choose Install Automation Tools in the Apple Configurator menu) for this to work.
