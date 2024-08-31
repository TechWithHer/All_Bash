#!/bin/bash

#let's count the number of files in a directory. 

echo "Enter the dir name for which you want the files to be counted"
read dir 

file_count=$(find "$dir" -type f| wc -l )

echo "Number of files are $file_count"

 
