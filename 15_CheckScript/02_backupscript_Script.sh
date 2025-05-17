#!/bin/bash 


backup_file=$(./02_backupscript_Code.sh bkp)   # Capture the output


# Confirm the backup
if [ $? -eq 0 ]; then
  echo "Backup successful! File saved as $backup_file"
else
  echo "Backup failed."
fi