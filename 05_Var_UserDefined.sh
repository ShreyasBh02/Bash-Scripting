echo "==== User-Defined Variables ===="

# 1. Assigning and using variables
name="Alice"
age=30

echo "Name: $name"
echo "Age: $age"

echo

# 2. Updating variable
age=31
echo "Updated Age: $age"

# Use command substitution to capture the current time
tdate=$(date +%T)

# Display the timestamp
echo "The timestamp is $tdate"


echo

# 3. Using command substitution
current_date=$(date)
echo "Today is: $current_date"

current_dir=$(pwd)
echo "Current Directory: $current_dir"