#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)    # $0  is fto find the script name 
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log   #/ creating a log file 

VALIDATE(){
   if [ $1 -ne 0 ]
   then 
   echo "$2....failure"
   exit 1
   else 
   echo "$2 ....success"
   fi 
}

if [USERID -ne 0]
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
