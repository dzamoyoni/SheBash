#!/bin/bash
# reading data from a file
#
count=1
cat test | while read line 
do 
	echo "line $count: $line"
	count=$[ $count + 1 ]
done
echo "Finished processing the file"
