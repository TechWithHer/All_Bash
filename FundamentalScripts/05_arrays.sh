#!/bin/bash

#Arrays 

Arrayname=(1 3 45 3.4 "Hey Wow")

echo "${Arrayname[4]} is the last value of my array list"

echo "All values of my arrays are ${Arrayname[*]}"

#How to find the number of values in an array or lenght of the array


echo "Lets find the length of the array: ${#Arrayname[*]}"

#How to find the specific position of the array 

echo "Lets find the specific position of the array: ${Arrayname[3]}"

#How to find the specific range of the array

echo "Lets find the specific range of the array: ${Arrayname[*]:2:4}"

#Adding new values to the array

Arrayname+=(New 15 Sonal)

echo "New array with added values : ${Arrayname[*]}"




