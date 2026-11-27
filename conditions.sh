#!/bin/bash
user_id=$(id -u)
if [$user_id -ne 0]; then
echp "Please run this on sudo access"
exit1
fi
echo "Proceeding"

dnf install nginx -y
if [$user_id -ne 0]; then
echp "Nginx installation failed"
exit1
else
echo "Niginx installation success"

fi
dnf install mysql -y
if [$user_id -ne 0]; then
echp "MySQL installation failed"
exit1
else
echo "MySQL installation success"

fi

echo "still Proceeding"


