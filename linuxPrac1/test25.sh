#!/bin/bash
# looking for a possible value
#
if [ $USER = "dennis" ]
then
	echo "Welcome $USER"
	echo "Please enjoy your visit"
elif [ $USER = "barbara" ]
then
	echo "Welcome $USER"
	echo "Please enjoy your visit"
elif [ $USER = "testing" ]
then
	echo "Special testing account"
elif [ $USER = "jessica" ]
then
	echo "DO not forget to logout when you're done"
else
	echo "Sorry, you are not allowed here"
fi

