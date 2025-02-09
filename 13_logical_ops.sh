#!/bin/bash

#AND OPERATOR


read -p "What is your age" age
read -p "What is your country" country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then 
	echo "You can vote"

else 
	echo "You cannote vote"

fi
