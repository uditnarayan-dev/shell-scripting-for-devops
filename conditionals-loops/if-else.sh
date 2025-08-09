#!/bin/bash

read -p "Enter the username" name

if [ $name == "udit" ]; then
	echo "User identified"
else
	echo "User not recognised"
fi
