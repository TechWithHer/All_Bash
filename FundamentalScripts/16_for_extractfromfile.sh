#!/bin/bash

#Extracting value from a file names.txt

FILE="/Users/apple/Coding/Bashexefiles/names.txt"

for name in $(cat $FILE)
do
	echo "Name is $name" 
done


