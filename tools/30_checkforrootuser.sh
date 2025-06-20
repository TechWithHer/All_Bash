#!/bin/bash

#check if the user is the root user or not

R_User=$UID

if (( $R_User != 0 ));
then
	echo "User is NOT a ROOT USER"
else
	echo "USER is a ROOT USER"
fi

