#!/bin/bash
#testing string eqaulity
testuser=baduser
#
if [ $USER != $testuser ]
then 
	echo "This is not $testuser"
else
	echo "welcome $testuser"
fi

