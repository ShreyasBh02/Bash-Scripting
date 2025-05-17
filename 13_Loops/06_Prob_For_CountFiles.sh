#!/bin/bash

directory_to_check="/D/Rest Assured_ATT/Bash Scripting/Programs/13_Loops/MonitorsFiles"

# Process .txt files
for file in "$directory_to_check"/*.txt; do
    if [ -f "$file" ]; then
        line_count=$(wc -l < "$file")
        echo "Line count is $line_count" >> "$file"
        echo "Updated '$file' with line count."
    fi
done
  