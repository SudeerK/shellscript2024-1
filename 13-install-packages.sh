#!/bin/bash
# It will be executed as sh.13-install-packages.sh args

ID=$(id -u)
echo "Value of ID : $ID"
echo "Name of the script is : $0"
echo "Number of args passed : $#"
echo "Args passed are : $@"

R="\e[31m" #Red
G="\e[32m" #Green
Y="\e[33m" #Yellow
N="\e[0m"  #Normal color

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at: $TIMESTAMP" &>> $LOGFILE

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
    echo " $2 ... FAILED"
    else
    echo "$2 ... PASSED"
}

if [ $ID -ne 0 ]
then 
echo -e "$R Error:: Not a root user $N"
exit 1
else 
echo "Logged in as root user"
fi

for package in $@
do
yum list installed $package &>> $LOGFILE
if [ $? -ne 0 ]
then 
yum install $package -y &>> $LOGFILE
VALIDATE $? "Installation of $package"
else
echo -e "$package already installed.. Skipping"
fi
done
