#!/bin/bash
# Reading a column from CSV
# IFS stands for Internal Field Separator 

awk 'NR>1' text.csv | while IFS="," read -r id name age
do
        echo "ID IS $id"
        echo "Age is $age"
done
