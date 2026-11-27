#!/bin/bash
user_id=$(id -u)
logs_folder="/var/log/Shell-scripting"
logs_file="${logs_folder}/${0}.log"

R= "\e[31m"
G= "\e[32m"
B= "\e[34m"
N= "\e[0m"

if [ $user_id -ne 0 ]; then
    echo "Please run this on sudo access"
    exit1
fi
mkdir -p $logs_folder
echo "Script started execution $(date +"%F %T")" &>> $logs_file
validate(){
    if [ $1 -ne 0 ]; then
        echo -e "${R}${2}..failed${N}" | tee -a $logs_file
        exit1
    else
        echo -e "${G}${2}..success${N}" | tee -a $logs_file
    fi
}

for package in $@
do
dnf list installed $package -y &>> $logs_file
if [ $? -ne 0 ]; then
    echo "Going to install  : ${package}.."
    dnf install $package -y &>> $logs_file
    validate $? "Installing ${package}"
    else
    echo -e "${B}${package} is already installed${N}" | tee -a
done
echo -e "${B}Completed....... $(date +"%F %T")${N}" &>> $logs_file


