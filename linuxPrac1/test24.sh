#!/bin/bash
# Using pattern matching
#
if [[ $USER == i* ]]
then 
	echo "Hello $USER"
else
	echo "Sorry, I do not know you"
fi

