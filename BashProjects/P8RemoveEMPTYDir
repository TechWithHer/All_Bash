#!/bin/bash

#Remove Dir when EMPTY 

echo "Enter dir name or path"
read dir
if [ -d  "$dir" ]; then
	if rmdir "$dir" ; then
	echo "Dir was empty and hence removed" 
	
	else 
	echo "Dir is NOT empty and hence not removed"
	fi

else
    echo "It seems this dir doesnt exist"


fi
