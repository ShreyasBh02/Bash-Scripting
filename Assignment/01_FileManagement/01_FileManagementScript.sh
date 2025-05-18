#!/bin/bash

# Create a backup directory in the user's home directory
Backup_Dir="$HOME/backup"
if [ ! -d "$Backup_Dir" ]; then
    mkdir -p "$Backup_Dir"
    echo "Created backup directory: $Backup_Dir"
else
    echo "Backup directory already exists: $Backup_Dir"
fi

# Get the current date and time in the format YYYYMMDD_HHMMSS
CURRENT_DATE=$(date +"%Y%m%d_%H%M%S")

COUNT=0

# Copy all .txt files to the backup directory and rename them
for file in *.txt; 
do
    if [ -f "$file" ];then
        fileName="${file%.txt}"
        new_fileName="${fileName}_${CURRENT_DATE}.txt"

        # Copy file to backup directory with new name
        cp "$file" "$Backup_Dir/$new_fileName"

        # Increment counter if copy was successful
        if [ $? -eq 0 ]; then
            COUNT=$((COUNT+1))
            echo "Backed up: $file → $new_fileName"
        else
            echo "Failed to back up: $file"
        fi
    fi
done

# Print summary
if [ $COUNT -eq 0 ]; then
    echo "No .txt files found to back up."
elif [ $COUNT -eq 1 ]; then
    echo "Backup complete. 1 file was copied to $Backup_Dir"
else
    echo "Backup complete. $COUNT files were copied to $Backup_Dir"
fi
