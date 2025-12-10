#!/bin/bash

# out prog goad to install my sql
# check the user , exit the prog and inform user to run with sudo 
# if root user install mysql
# root user id -u --- is 0
# non root user id -u --- is non 0

USERID=$(id -u) # executing the id -u and  saving in USERID variable
if [ $USERID -ne 0 ]
then 
    echo " ERROR :: please run with sudo or root user"
fi

yum install git -y 
