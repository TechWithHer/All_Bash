#!/bin/bash

echo "From which directory do you want to delete? Enter the path:"
read dir

# Trim spaces from directory path
dir=$(echo "$dir" | xargs)

# Check if the provided directory exists
if [ -d "$dir" ]; then
    echo "Directory path is correct."
    
    echo "Enter the file extensions you want to delete (separated by spaces):"
    read -a extensions   # Read multiple extensions as an array

    count=0  # Initialize deleted file counter

    # Loop through each extension entered
    for ext in "${extensions[@]}"; do
        ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')  # Convert to lowercase
        echo "Searching for *.$ext files..."

        # Find files and store them in an array
        files=( $(find "$dir" -type f -name "*.$ext") )

        # Check if files exist before deletion
        if [ ${#files[@]} -eq 0 ]; then
            echo "No *.$ext files found."
            continue
        fi

        # Loop through and delete files
        for file in "${files[@]}"; do
            echo "Removing: $file"
            rm "$file"
            count=$((count+1))
        done
    done

    echo "Total files deleted: $count"

else 
    echo "Directory path is incorrect or does not exist."
fi
