'For Loop
        The for loop is used to iterate over a list of items or a range of numbers.
'

# Iterating Over a List
fruits=("apple", "banana", "pineapple")

for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done

# Iterating Over a Range of Numbers
for i in {1..5}; do
    echo "Number: $i"
done