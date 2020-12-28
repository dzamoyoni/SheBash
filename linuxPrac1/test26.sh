#!/bin/bash
# Using the case command

#
case $USER in dennis |juma)
	echo "Welcome $USER"
	echo "Please enjoy your visit";;
testing)
	echo "Special testing account";;
jessica)
	echo "DO not forget to logout when you're done";;
*)
	echo "Sorry, you are not allowed here"
esac

