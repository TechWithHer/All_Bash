#!/bin/bash

myVar="Hey Man How are you?"
myVarLength=${#myVar}
echo "Length of the myVar is $myVarLength"
echo "Upper case is -----${myVar^^}"
echo "Lower case is------${myVar,,}"

#Replacing the string with another character 

newVar=${myVar/Man/Sonal}

echo "New Variable is: $newVar"

#To slice a string

echo "After Slicing ${myVar:4:5}"

