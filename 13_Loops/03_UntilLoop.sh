
correct_password="admin"

# Prompt user for input
until [[ "$user_input" == "$correct_password" ]]
do
    read -p "Enter the password: " user_input
done

echo "Access granted!"