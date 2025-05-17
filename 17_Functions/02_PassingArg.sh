#!/bin/bash

# Define a function that takes two arguments
greet() {
    echo "Hello, $1! You are $2 years old."
}

# Call the function with arguments
greet "Jhon Doe" 25


# Function to demonstrate positional parameters
show_parameters() {
    echo "Function Name: $0"  # $0 holds the script name
    echo "First Argument: $1"
    echo "Second Argument: $2"
    echo "Third Argument: $3"
    echo "Total Arguments: $#"
    
    echo "All Arguments using \$*: $*"
    echo "All Arguments using \$@: $@"

    echo "Arguments with \"\$*\": \"$*\""
    echo "Arguments with \"\$@\": \"$@\""
}

# Call the function with sample arguments
show_parameters "Hello" "World" "Bash"