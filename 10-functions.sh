#!/bin/bash

ID=$(id -u)
echo "Value of ID = $ID"
VALIDATE()
{
if [ $? -ne 0 ]
then 
echo "ERROR::INSTALLATION FAILED"
exit 1
else
echo "INSTALLATION SUCCESSFUL"
fi
}


if [ $ID -ne 0 ]
then 
echo "ERROR:: NOT A ROOT USER. LOGIN WITH ROOT USER TO INSTALL SOFTWARE"
else
echo "SUCCESS:: ROOT USER"
fi

yum install mysql123 -y
VALIDATE()
