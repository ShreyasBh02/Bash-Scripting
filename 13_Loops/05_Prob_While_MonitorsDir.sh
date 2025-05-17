#!/bin/bash


directory_to_check=$1

while [ "$(ls -A $directory_to_check)" ]
do 
    file_count=$(ls -1 $directory_to_check | wc -l)
    echo "File Count int the directory $directory_to_check is $file_count"
    sleep 5
done

echo "$directory_to_check is now empty"