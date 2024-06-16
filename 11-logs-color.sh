#!/bin/bash

echo "Script Name is : $0"

ID=$(id -u)
echo "ID is : $ID"
TimeStamp=$(date +%F-%H-%M-%S)
echo "Logged Time is : $TimeStamp"

LOGFILE="/tmp/$0-$TimeStamp.log"

R=\e[31m #Red
G=\e[32m #Green
Y=\e[33m #Yellow
N=\e[0m  #Normal color

VALIDATE()
{
    if [ $? -ne 0 ]
    then 
        echo -e "ERROR:: $1 $Y INSTALLATION FAILED"

    else
        echo -e "$1 $G INSTALLATION SUCCESSFUL"
    fi
}


if [ $ID -ne 0 ]
then 
echo "ERROR:: NOT A ROOT USER. LOGIN WITH ROOT USER TO INSTALL SOFTWARE"
exit 1
else
echo "SUCCESS:: ROOT USER"
fi

yum install mysql123 -y &>> $LOGFILE
VALIDATE "MYSQL"

