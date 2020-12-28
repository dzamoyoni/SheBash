#!/bin/bash
# simple demonstration of the getopts command
#
echo 
while getopts :ab:c opt
do
	case "$opt" in 
		a) echo "Found the -a option" ;;
		b) echo "FOund the -b option, with the $OPTARG" ;;
		c) echo "Found the -c option";;
		*) echo "Unknown option: $opt";;
	esac
done

