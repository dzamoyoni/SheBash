#!/bin/bash
# testing file dates
#
if [ badfile1 -nt badfile2 ]
then 
	echo "The badfile1 file is newer than badfile2"
else
	echo "The badfile2 file is newer than badfile1"
fi
