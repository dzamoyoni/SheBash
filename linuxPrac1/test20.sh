#!/bin/bash
# testing ile dates
#
if [ test19.sh -nt test18.sh ]
then 
	echo "The test19 file is newer than test18"
else
	echo " The test18 file is newer than test19"
fi
if [ test17.sh -ot test19.sh ]
then 
	echo "The test17 is older than the test19.sh file"
fi


