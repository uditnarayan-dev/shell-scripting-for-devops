#!/bin/bash
#Function

function user_detect() {
#read -p "Enter username" user

if [[ "$1" == "unj" ]]; then
	echo "user identified"
else
	echo "Not identified"
fi
}

user_detect un
