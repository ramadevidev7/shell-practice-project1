#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)    # $0  is fto find the script name 
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log   #/ creating a log file 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
   then 
   echo "$2....$R  failure  $N"
   exit 1
   else 
   echo "$2 ....$G  success $N"
   fi 
}

if [ $USERID -ne 0 ]
then 
echo "please run this script with root access"
exit1
else
echo "you are a super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing mysql"

dnf install git -y  &>>$LOGFILE
VALIDATE $? "installing git"

dnf install dockerr -y $>>$LOGFILE
VALIDATE $? "installing docker"