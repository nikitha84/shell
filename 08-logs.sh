#!/bin/bash

#adding timeformate,logs and colurs

R="\e[31m"
G="\e[32m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "ERROR: $2 ..installation $R failed $N"
    else
        echo -e "$2....installation $G Success $N"
    fi
}

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo -e "ERROR : $R Please run with root user $N"
    exit 1
else
    echo "you are root user"
fi

yum install git -y &>> $LOGFILE

VALIDATE $? "git installation"
yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql installation"


