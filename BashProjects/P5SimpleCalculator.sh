#!/bin/bash

#Lets create a simple calculator to calculate +,-,/,* by inputting 2 numbers and inputting 1 operation

echo "Hello,enter two number"
read a
read b
echo "Now enter +, -, / or * operand"
read op

if [[ "$op" == "+" ]];
then
let sum=a+b
echo "Sum is: $sum"

elif [[ "$op" == "-" ]];
then
let sum=a-b
echo "Sub is: $sum"

elif [[ "$op" == "*" ]];
then
let sum=a*b
echo "Mul is: $sum"

elif [[ "$op" == "/" ]];
then
let sum=a/b
echo "Division is: $sum"

else
echo "Invalid operator, closing the program"
fi


