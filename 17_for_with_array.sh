#!/bin/bash

myArray=(1 2 3 4 5 "Hey")

length=${#myArray[*]}

for(( i=o;i<length;i++))
do
	echo " VALUES of ARRAY is ${myArray[$i]} "
done

