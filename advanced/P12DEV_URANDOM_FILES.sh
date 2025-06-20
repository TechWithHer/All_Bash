#!/bin/bash

#lets try the dev/urandom 
# Check if /dev/urandom is available

if [ ! -e /dev/urandom ]; then
    echo "/dev/urandom is not available. Please check your system."
else
echo "Its there"
fi

#check if tr is available

# Generate a random password with 8 characters
password=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 8)

# Display the generated password
if [ -z "$password" ]; then
    echo "Failed to generate password. Please check if tr and head are available."
else
    echo "Generated Password: $password"
fi
