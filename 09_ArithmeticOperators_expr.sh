'
Using expr:
The expr command can also be used for arithmetic operations, but it requires spaces around operators and is less commonly used in modern scripts.
'

# Declare variables
a=10
b=5

# Addition
result=$(expr $a + $b)
echo "Addition: $result"  

# Subtraction
result=$(expr $a - $b)
echo "Subtraction: $result" 

# Multiplication
result=$(expr $a \* $b)  # Note the escape character before *
echo "Multiplication: $result" 

# Division
result=$(expr $a / $b)
echo "Division: $result"  

# Modulus
result=$(expr $a % $b)
echo "Modulus: $result" 