#!/bin/bash

#File existance checker. 

#lets first check the directory and its existence 

echo "enter the dir name"
read dir
echo "enter the name of the file which you want to check"
read filename

if [ -d "$dir" ]; then
	echo "$dir directory exist"
else 
	echo "$dir this directory does not exist"
fi

if [ -f "$dir/$filename" ]; then
 
	echo "filename $filename, exists"

else
	echo "filename  $filename, does NOT exist"

fi 
