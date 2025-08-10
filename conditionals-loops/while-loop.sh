#!/bin/bash
# While loop

num=0

while [[ $num -le 5 ]]; do
    echo "udit$num"
    num=$((num+1))
done
