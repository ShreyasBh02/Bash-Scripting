# If Statements
# A basic if statement commands that if a particular condition is true, 
# then only execute a given set of actions. If it is not true, 
# then do not execute those actions. 
# If statement is based on the following format:

# Syntax
# if [ expression ];  
# then  
#     statements  
# fi

num=24
if [ $((num % 2)) -eq 0 ];then
    echo "The number is even"
fi


#  If statement with multiple Condtions
  num1=15

if [ $num1 -gt 10 ] && [ $num1 -lt 20 ]; then
    echo "The given no $num1 is between 10 to 20"
fi