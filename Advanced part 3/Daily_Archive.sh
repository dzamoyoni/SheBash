#!/bin/bash 
#
# Daily_Archive - Archive designated files & directories 
########################################################
#
# Gather Current Date 
#
DATE=$(date +%y%m%d)
#
# Set Archive File Name
#
FILE=archive$DATE.tar.gz	
#
# Set Configuration and Destination FIle 
#
############ Main Script #################
#
# Check Backup COnfig File Exists
#
if [ -f $CONFIG_FILE ] # Make sure the config file still exists.
then    	#If if exists, do nothing but continue on.
	echo 
else 		#IF it doesn't exist, issue error & exit script.
	echo 
	echo "$CONFIG_FILE does not exist."
	echo "Backup not completed due to missing Configuration file" 
	echo 
	exit
fi 
#
#
# Build the names of all the files to backup
#
FILE_NO=1 		#Start on line 1 fo Config File.
exec < $CONFIG_FILE 	#Redirect Std Input to name of Config File.
#
read FILE_NAME 		# Read 1st record
#
while [ $? -eq 0 ] 	# Create list if files to backup
do 
		#make sure the file or directory exists.
		if [ -f $FILE_NAME -o -d $FILE_NAME ]
		then
			#IF file doesn't exist, issue warning 
			echo 
			echo "$FILE_NAME, does not exist"
			echo "Obviously it will not include it in this archive"
			echo "It is listed on line $FILE_NO of the config file"
			echo "Contining to build archive list..."
			echo
		fi
#
		FILE_NO=$[$FILE_NO + 1] #Increase Line/File number by one.
		read FILE_NAME		#Read next record.
	done
#
#############################################
#
# Backup the files and compress Archive
#
echo "Starting archive..."
echo 
#
tar -czf $DESTINATION $FILE_LIST 2> /dev/null
#
echo "Archive completed"
echo "Resulting archive file is: $DESTINATION"
echo 
#
exit


