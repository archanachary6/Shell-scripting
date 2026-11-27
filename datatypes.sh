#!/bin/bash
a=10
b=30
c=archana

echo "$a+$b"
echo "$(($a+$b))"

echo "$(($a+$b+$c))"

declare -i COUNT=5
COUNT=COUNT+1
echo "count is :$COUNT" 
FRUITS=("banana" "apple" "grapes" "orange")

echo "All fruits : ${FRUITS[@]}"
echo "First fruit : ${FRUITS[0]}"

