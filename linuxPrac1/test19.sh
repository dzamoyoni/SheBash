#!/bin/bash
# Check file group test
#
if [ -G $HOME/learnerPrac/testing ]
then
	echo "You are in the same group as the file"
else
	echo "The file is not owned by the group"
fi

