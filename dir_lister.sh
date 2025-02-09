#!/bin/bash 

#Lets ask the user to enter the root for which he want to list the directories. 

echo "From where do you wish to list all the directories. Enter the path or the name"
read dir 

#to count the number of dirs
let count=0
#check if the dir exists. 

if [ -d "$dir" ]; then 
	echo "$dir exists"
else 
	echo "Invalid dir"
fi

#list the directories 

for entry in "$dir"/*; do 
	if [ -d "$entry" ]; then
		echo "$entry"
		count=$((count+1))
	fi 
done 

echo "Number of dirs are $count"

