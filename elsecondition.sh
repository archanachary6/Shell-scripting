#!/bin/bash

echo "Please enter marks :"
read marks
#lt means less than
if [$marks -lt 33 ]; then
echo "Fail"
if [$marks -lt 50 ]; then
echo "Third class"
if [$marks -lt 60 ]; then
echo "Second class"
if [$marks -lt 75 ]; then
echo "First class"
else 
echo "Distinction !"
fi
echo "end"


