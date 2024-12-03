#!/bin/bash

USERID=$(id -u)


VALIDATE(){
   if [$1 -ne 0 ]
   then 
   echo "$2....failure"
   exit 1
   else 
   echo "$2 ....success"
   fi 
}

if [$USERID -ne 0]
then 
echo "please run this script with root access"
exit1
else
echo "you are a super user"
fi

dnf install mysql -y
VALIDATE $? "installing mysql"

dnf install git -y 
VALIDATE $? "installing git"
