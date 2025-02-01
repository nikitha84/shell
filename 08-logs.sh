#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "ERROR: $2 ..installation failed"
    else
        echo "$2....installation Success"
    fi
}

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR : Please run with root user"
    exit 1
else
    echo "you are root user"
fi

yum install git -y &>> $LOGFILE

VALIDATE $? "git installation"
yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql installation"


