#!/bin/bash

#!/bin/bash
user_id=$(id -u)
if [ $user_id -ne 0]; then
echo "Please run this on sudo access"
exit1
fi
echo "Proceeding"
validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..failed"
        exit1
    else
        echo "${2}.. suceess"
    fi
}
echo "still proceeding.."
dnf install nginx -y
validate $? "Nginx installed"

dnf install mysql -y
validate $? "MySQL installed"
echo "Completed......."


