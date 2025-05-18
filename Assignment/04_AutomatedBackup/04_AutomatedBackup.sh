#!/bin/bash

# Automated Backup Script
# Prompts for a directory, compresses it into a .tar.gz file with current date in filename


# Define the directory to back up
DIR_PATH=$1

# Check if the directory exists
if [[ ! -d "$DIR_PATH" ]]; then
    echo "Error: Directory "$DIR_PATH" doesnt exist."
    exist 1
fi

# Get the current date in YYYY-MM-DD format
CURRENT_DATE=$(date +"%Y-%m-%d")

# Define the backup filename
BACKUP_FILENAME="${DIR_PATH}_${CURRENT_DATE}.tar.gz"

# Create the compressed tar.gz archive
tar -czf "$BACKUP_FILENAME" "$DIR_PATH"
 

if [[ $? -eq 0 ]]; then
    echo "Backup successful: $BACKUP_FILENAME"
else
    echo "Backup failed."
fi


