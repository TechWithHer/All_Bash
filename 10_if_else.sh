#!/bin/bash

read -p "What is your age?" age

if [ "$age" -gt 60 ]
then
	echo "You are retired and can vote"

elif [ "$age" -ge 18 ]
then
	echo "You should vote"  

else 
echo "You cannot vote"

fi
