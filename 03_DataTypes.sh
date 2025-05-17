
##String
name="John"
greeting="Hello, $name!!"

##integer
num1=10
num2=20
sum=$(num1+num2)

##Array
fruits=("apple", "banana", "Pineapple")

# Output the String
echo "$greeting"

# Perform arithmetic with Integers
echo "The sum of $num1 and $num2 is $sum"

# Access and Display Array Elements
echo "Here are your favorite fruits:"
for fruit in "${fruits[@]}"; do
    echo "- $fruit"
done

# Add a new element to the array
fruits+=("mango")
echo "Updated list of fruits: ${fruits[@]}"
