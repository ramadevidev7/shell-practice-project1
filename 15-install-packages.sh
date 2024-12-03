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
   echo -e "$2....$R  failure  $N"
   exit 1
   else 
   echo -e "$2 ....$G  success $N"
   fi 
}


if [ $USERID -ne 0 ]
then 
echo "please run this script with root access"
exit 1
else
echo "you are a super user"
fi

# echo "all packages $@"

for i in $@
do 
echo "package to install: $i"
dnf  list installed $i &>>$LOGFILE   
if [ $? -eq 0]
then 
echo -e "$i already installed .... $Y SKIPPING $N"
else
dnf install $i -y &>>$LOGFILE
VALIDATE $? "installation of $i"
fi

done