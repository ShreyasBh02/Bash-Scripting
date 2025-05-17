#!/bin/bash

# Display the script name
echo "Script name: $0"

# Display the first and second arguments
echo "First argument: $1"
echo "Second argument: $2"

# Display the total number of arguments
echo "Number of arguments: $#"

# Display all arguments as a single string
echo "All arguments (as a string): $*"

# Display all arguments as an array
echo "All arguments (as an array):"
for arg in "$@"; do
    echo "- $arg"
done

# Display the process ID of the script
echo "Process ID of the script: $$"

# Run a background command and display its process ID
sleep 5 &
echo "Process ID of the last background command: $!"

# Display the exit status of the last command
ls > /dev/null 2>&1
echo "Exit status of the last command: $?"

# Display the current shell options
echo "Current shell options: $-"