#!/bin/bash

read -p "WHICH SITE YOU WANT TO CHECK?" site
ping -c 1 "$site"

if [[ $? -eq 0 ]];
then
	echo "Site is succesfully connected $site"
else
	echo "Site is not connected $site"
fi 
