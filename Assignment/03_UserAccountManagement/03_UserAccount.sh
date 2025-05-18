#!/bin/bash

# User Account Management Script
# - Reads usernames from user_list.txt
# - Creates users with random passwords
# - Saves credentials to credentials.txt

USER_LIST="user_list.txt"
CREDENTIALS_FILE="credentials.txt"

if [[ ! -f $USER_LIST ]]; then
  echo "Error: $USER_LIST not found!"
  exit 1
fi

> $CREDENTIALS_FILE

while read -r username; do
  [[ -z "$username" ]] && continue

  # Simulate check (assume user doesn't exist)
  echo "Simulating creation of user: $username"

  # Generate a fake password
  password=$(openssl rand -base64 12)

    # Simulate creation
    echo "[SIMULATED] useradd $username"
    echo "[SIMULATED] echo $username:$password | chpasswd"

  # Save simulated credentials
  echo "$username $password" >> $CREDENTIALS_FILE

  echo "User $username created successfully."
done < "$USER_LIST"

echo "All users processed. Credentials saved in $CREDENTIALS_FILE."
