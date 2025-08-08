#!/bin/bash
# User input

#simple method
#echo "Enter your name"
#read name
#echo "name is $name"

#Adding prompt directly
#read -p "enter your city" city
#echo "your city is $city."

#Silent input
#read -sp "Enter your password: " password
#echo "password is hidden"

#Multiple variables at once
#read -p "Enter your first and last name" first last
#echo "Your First name is $first nad last name is $last"

#Default value
#read -p "Enter your Environent: " env
#env=${env:-dev}
#echo "Environment is $env"

#Creating user
read -p "Enter Username" username
echo "You entered Username as $username"
sudo useradd -m $username
echo "new user added"
