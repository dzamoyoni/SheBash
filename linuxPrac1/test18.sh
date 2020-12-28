#!/bin/bash
# Check file ownership	
#
if [ -o /etc/passwd ]
then
	echo "You are the owner of the /etc/passwd file"
else
	echo "Sorry, you are not the owner of the /etc/passwd file"
fi

