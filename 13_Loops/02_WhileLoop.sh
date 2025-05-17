

# Prompt user for input
read -p "Enter the Starting number: " snum
read -p "Enter the Ending number: " enum

# Run the while loop until snum exceeds enum
while [[ $snum -le $enum ]]
do
    echo "$snum"
    ((snum++))  # Corrected increment statement
done

echo "Loop completed!"