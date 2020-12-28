#!/bin/bash
# Processing options & parameters with getopts
#
echo 
while getopts :ab:cd opt
do
	case "$opt" in 
		a) echo "Found the -a option" ;;
		b) echo "Found the -b option, with value $OPTARG" ;;
		d) echo "Found the -c option" ;;
		*) echo "Unknown option: $opt" ;;
	esac
done
#
shift $[ $OPTIND - 1 ]
#
echo
count=1
for param in "$@"
do
	echo "Parameter $count: $param"
	count=$[ $count + 1 ]
done
#
