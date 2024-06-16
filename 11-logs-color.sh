#!/bin/bash

echo "Script Name is : $0"

ID=$(id -u)
echo "ID is : $ID"
TimeStamp=$(date +%F-%H-%M-%S)
echo "Logged Time is : $TimeStamp"

LOGFILE="/tmp/$0-$TimeStamp.log"

VALIDATE()
{
    if [ $? -ne 0 ]
    then 
        echo "ERROR:: $1 \e[31m INSTALLATION FAILED"

    else
        echo "$1 \e[32m INSTALLATION SUCCESSFUL"
    fi
}


if [ $ID -ne 0 ]
then 
echo "ERROR:: NOT A ROOT USER. LOGIN WITH ROOT USER TO INSTALL SOFTWARE"
exit 1
else
echo "SUCCESS:: ROOT USER"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE "MYSQL"

