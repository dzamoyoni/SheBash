#!/bin/bash
#
# Big_Users - Find big disk space users in various directories
#
################################################################
# Parameters for script 
#
CHECK_DIRECTORIES=" /var/log /home" #Directories to check 
#
DATE=$(date '+%m%d%y')		#Date for report file 
#
exec > disk_space_$DATE.rpt 	#Make report file STDOUT
#
echo "Top Ten Disk Space Usage" #Report header
echo "for $CHECK_DIRECTORIES Directories"
#
for DIR_CHECK in $CHECK_DIRECTORIES 	#loop to du directories
do
	echo ""
	echo "The $DIR_CHECK Directory:"  #Directory header
#
# Create a listing of top ten disk space users in this dir
du -S $DIR_CHECK 2>/dev/null |
	sort -rn |
	sed '{11,$D; =}' |
	sed 'N; s/\n/ /' |
	gawk '{prinft $1 ":" "\t" $2 "\t" $3 "\n"}'
#
done				#End of loop 
#
exit
