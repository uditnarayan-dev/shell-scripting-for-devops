#!/bin/bash
#For Loop

#creating multiple files 
<< task
Creating file names using arguement
arguement 1 is the file name always
arguement 2 is the first arguement that you pass
.
or
1 = file name
2 = 1st arguement

task

for (( num = $2;num <= $3; num++ )); do
	touch "$1$num"
done

