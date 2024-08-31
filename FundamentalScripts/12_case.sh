#!/bin/bash

echo "Provide an option"
echo "A for printing date"
echo "B for list of scripts" 

read OPTION

case $OPTION in
	A)
		echo "Today's date is:"
		date;;
	B)ls;;
        *)echo "Please provide valid value"

esac
