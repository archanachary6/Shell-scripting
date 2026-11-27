#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/Shell-scripting"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0]; then
    echo "Please run this on sudo access"
    exit1
fi
mkdir -p $logs_folder
echo "Script started execution $(date +"%F %T")" &>> $logs_file
validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..failed" | tee -a $logs_file
        exit1
    else
        echo "${2}.. suceess" | tee -a $logs_file
    fi
}
echo "still proceeding.."
dnf install nginx -y
validate $? "Nginx installed"

dnf install mysql -y
validate $? "MySQL installed"
echo "Completed....... $(date +"%F %T")" &>> $logs_file


