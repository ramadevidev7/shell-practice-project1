#!/bin/bash

USERID=$(id -u)

if 
[$USERID -ne 0]
then 
echo "please run this script with root access" 
exit 1 # manually exit if error comes
else 
echo "you are a super user "
fi 

dnf install mysql -y

if [$? -ne 0]
then 
echo "installation of mysql is failure"
exit 1
else 
echo "mysql installation is success"
fi 

dnf install git -y

if [$? -ne 0 ]
then 
echo "installation of git is failure "
exit 1 
else
echo "git installation is success"
fi
echo "is script proceeding"