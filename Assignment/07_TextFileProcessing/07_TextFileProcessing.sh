#!/bin/bash

# Text File Processing Script
# Usage: ./text_file_processing.sh filename.txt

# Check if filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

FILE="$1"

# Check if the file exists and is readable
if [ ! -f "$FILE" ] || [ ! -r "$FILE" ] ; then
    echo "Error: file '$FILE' not found or not readable."
    exit 1
fi

# Count Lines, Words and Characters
LINES=$(wc -l < "$FILE")
WORDS=$(wc -w < "$FILE")
CHARS=$(wc -m < "$FILE")

# Find the longest word
LONGEST_WORD=$(tr -cs '[:alnum:]' '\n' < "$FILE" | awk '{ if(length > length(max)) max=$0 } END { print max }')


# Display results
echo "File: $FILE"
echo "Lines: $LINES"
echo "Words: $WORDS"
echo "Characters: $CHARS"
echo "Longest word: $LONGEST_WORD"