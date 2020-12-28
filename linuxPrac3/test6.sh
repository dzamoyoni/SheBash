#!/bin/bash
# Testing the multi-function script
#
name=$( basename $0)
#
if [ $name = "addem" ]
then
	total=$[ $1 + $2 ]
#
elif [ $name = "multem" ]
then
	total=$[ $1 * $2 ]
fi
#
echo 
echo The calculated value is $total
#
