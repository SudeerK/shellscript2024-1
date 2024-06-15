#!/bin/bash

ID=$(id -u)
echo "Value of ID = $ID"
VALIDATE()
{
if [ $ID -ne 0 ]
then 
echo "ERROR:: NOT A ROOT USER. LOGIN WITH ROOT USER TO INSTALL SOFTWARE"
else
echo "Installation of software is success"
}