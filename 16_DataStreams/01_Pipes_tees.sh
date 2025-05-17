#!/bin/bash

# Define the directory to check
directory_to_check=$1

# Check if directory exists
if [ ! -d "$directory_to_check" ]; then
  echo "Error: Directory $directory_to_check does not exist." >&2  # Redirect error to stderr
  exit 1
fi


# Using pipes to filter text files and displays details
echo "Listing all .txt files in $directory_to_check:" | tee file_list.txt
ls -l "$directory_to_check" | grep ".txt" | tee -a file_list.txt

# Log output to terminal and save to a file
echo "File list saved to file_list.txt"
