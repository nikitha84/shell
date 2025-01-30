#!/bin/bash

VALIDATE(){
    if [ $? -ne 0 ]
    then 
        echo "ERROR: installation failed"
    else
        echo "installation Success"
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

yum install git -y

VALIDATE
yum install mysql -y
VALIDATE

