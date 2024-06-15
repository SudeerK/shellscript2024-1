#!/bin/bash

ID=$(id)
if [ $ID -ne 0 ]
then
echo "Not a root user, login with root user to continue"
else
echo "You are logged in as root user. Continue with your installation"
fi