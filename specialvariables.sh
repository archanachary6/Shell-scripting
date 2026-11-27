#!/bin/bash

echo "All aruguments passed to the script : $@"
echo "All aruguments passed to the script as a word : $*"
echo "Number of aruguments passed to the script : $#"
echo "First variable given : $1"
echo "Script name : $0"
echo "Real Path  : $(realpath $0)"
echo "Who is running current Script : $USER"
echo "Directory of the current Script : $PWD"
echo "Home directory of current script : $HOME"
echo "PID of the current script : $$"
sleep 5
echo "PID of the command running background now :$!"
wait $!   #waits till it completes $!command
echo "Line number : $LINENO"

echo "Previous command exit status :$?"
echo "Total time to execute the script  : $SECONDS "

