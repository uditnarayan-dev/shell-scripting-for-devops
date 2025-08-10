#!/bin/bash

read -p "Enter the username" name
read -p "You can also enter secret code: " code
if [ $name == "udit" ]; then
	echo "User identified"
elif [ $code == "111" ]; then
	echo "granted throught secret code"
else
	echo "User not recognised"
fi
