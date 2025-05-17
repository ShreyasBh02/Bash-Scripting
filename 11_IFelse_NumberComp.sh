# Define two numbers for comparison
num1=10
num2=20
echo "Comparing $num1 and $num2:"

#Equal To: -eq
if [ "$num1" -eq "$num2" ]; then
    echo "$num1 is equal to $num2"
else
    echo "$num1 is not equal to $num2"
fi

#Not Equal To: -ne
if [ "$num1" -ne "$num2" ]; then
    echo "$num1 is not equal to $num2"
else
    echo "$num1 is not equal to $num2"
fi

# -lt (Less than)
if [ "$num1" -lt "$num2" ]; then
    echo "$num1 is less than $num2"
else
    echo "$num1 is not less than $num2"
fi

# -le (Less than or equal to)
if [ "$num1" -le "$num2" ]; then
    echo "$num1 is less than or equal to $num2"
else
    echo "$num1 is greater than $num2"
fi

# -gt (Greater than)
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is not greater than $num2"
fi

# -ge (Greater than or equal to)
if [ "$num1" -ge "$num2" ]; then
    echo "$num1 is greater than or equal to $num2"
else
    echo "$num1 is less than $num2"
fi
