#!/bin/bash
# Check if a file is writable
#
item_name=$HOME/learnerPrac/sentinel
echo 
echo "The item being checked: $item_name"
echo 

	if [ -f $item_name ]
	then
	echo "Yes, $item_name is a file."
	echo "But is it writable?"
	echo 
	#
	if [  -w $item_name ]
	then #Item is writable
		echo "Writing current time to $item_name"
		date +%H%M >> $item_name
		#
	else #Item is not writable
		echo "Unable to write to $item_name"
	fi
	#
	else #Item is not  a file
	echo "No, $item_name is not a file."

	fi
