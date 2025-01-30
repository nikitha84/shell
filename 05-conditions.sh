#!/bin/bash

ID =$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run root user"
else
    echo "You are root user"
fi





