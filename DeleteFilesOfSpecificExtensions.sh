#!/bin/bash

#Lets Delete Files of Specific Extensions from a Directory. 
#Dir name, extentions type will be entered by the user
#Enter the number of files deleted:wq


echo "From which directory do you want to delete? Enter the path:"
read dir
echo "What is the extension of the file you want to delete?"
read extension
let file_count=0

#check if the path which is inputted is valid

if [ -d "$dir" ]; then
	echo "Dir path is correct"

        #convert extention to lower case

	extension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')
	echo "extension in lower case is $extension"
	
	#lets find and count the existing files  		
	
	files=$(find "$dir" -type f -name "*.$extension" -print0 )
	file_count=$(find "$dir" -type f -name "*.$extension" | wc -l)
	echo "Number of files found $file_count"
	

	#now lets start the process of deletion 
 	for  file in "$files"; do
	echo "Removing $file"
	rm "$file" 	
	count=$((count+1))
done
	echo "Number of files deleted is: $count"	

else 
	echo "Dir path is incorrect"
fi 

