#!/bin/bash

# Countdown Timer

# Ask for the number of seconds to count down from
echo "Enter the number of seconds for the countdown:"
read seconds

# Check if the input is a valid number
if ! [[ "$seconds" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi

# Countdown loop
while [ $seconds -gt 0 ]; do
    echo "Time remaining: $seconds seconds"
    sleep 1
    seconds=$((seconds - 1))
done

echo "Time's up!"

