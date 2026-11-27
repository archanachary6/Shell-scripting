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
fruits=("banana" "apple" "grapes" "orange")

echo "All fruits : {$fruits[@]}"


