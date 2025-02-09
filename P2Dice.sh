#!/bin/bash

#Dice when rolled will generate random numbers but from 1-6 only. 

echo "Roll the dice, baby"

dice=$(( ( RANDOM % 6 ) +1 ))

echo "The number I got for you is $dice"


