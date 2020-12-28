#!/bin/bash
#Testing the test command
#
my_variable=""
#
if test $my_variable
then 
	echo "The $my_variable expression returns a True"
else
	echo "The $my_varibale epression returns a False"
fi
