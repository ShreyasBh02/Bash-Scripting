#!/bin/bash
 

mkdir -p Myfolder
echo "The main directory is created"

cd Myfolder || exit 1

mkdir -p src bin docs
echo "Under the main directory, the following subdirectories have been created:"

ls -l
