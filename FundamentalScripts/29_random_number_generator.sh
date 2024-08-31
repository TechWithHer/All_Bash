#!/bin/bash

#lets create a random number generator 

echo "Lets create a random number for you between 1 and 6"
sleep 5 seconds
Num=$(( $RANDOM % 6 + 1 ))
echo "here it is $Num"
