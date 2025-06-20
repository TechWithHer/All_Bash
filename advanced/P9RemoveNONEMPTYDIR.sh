#!/bin/bash

#Remove Dir when NOT EMPTY 

echo "Enter dir name or path"
read dir
if [ -d  "$dir" ]; then
	rm -r "$dir" 
	if [ $? -eq 0 ]; then
	echo "Dir '$dir'and its contents are  removed" 
	
	else 
	echo "Failed Attempt"
	fi

else
    echo "It seems this dir doesnt exist"


fi
