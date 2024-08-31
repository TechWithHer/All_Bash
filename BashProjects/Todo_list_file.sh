#!/bin/bash

#Specify the file where the to-do list items will be stored.

todo_file="Todo1.txt"

function add_todo {
    echo "Enter the to-do item:"
    read item
    echo "$item" >> "$todo_file"
    echo "To-do item added."
}

function remove_todo {
display_todo

echo "Enter the number of the item to remove:"
    read number
    # Use sed with -i (in-place edit) to remove the specific line number
    
    awk -v num="$number" 'NR != num' "$todo_file" > temp
    mv temp "$todo_file"
	echo "To-do list item removed."
}

function display_todo {

 if [ -f "$todo_file" ]; then
        echo "Your to-do list:"
        cat -n "$todo_file"
    else
        echo "You have no to-do items."
    fi


}

function display_options {
echo "1 for displaying list" 
echo "2 for adding to the list" 
echo "3 for removing from the list"
echo "4 Do nothing"
echo -n "Choose a correct option: "
}

#MainLoop

echo "New Todo_Txt file created"
echo "What you want to do with the list?" 
while true; do

	display_options
	read choice
	case $choice in
	1)	
		display_todo
	;;
	2)
		add_todo
	;;
	3)
		remove_todo
	;;
	4)
		echo "Bye Bye :) " 
	exit 0
	;;
	*)		
		echo "Invalid option"
	;;
	esac
done
 
		

