#!/bin/bash
<<comment
ID=$(id -u)
echo "Logged in ID is $ID"
if [ $ID -ne 0 ]
then
echo "ERROR::Not a root user, login with root user to continue"
else
echo "You are logged in as root user. Continue with your installation"
fi
comment

ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error:: Please run this script with root user."
else
echo " You are a Root user"
fi #reverse of if indicating end.