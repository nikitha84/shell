#!/bin/bash

#Installing git & validate conditons

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR : Please run with root user"
    exit 1
else
    echo "you are root user"
fi

yum install git -y
if [ $? -ne 0 ]
then 
    echo "ERROR: Git installation failed"
else
    echo "Git installation Success"
fi