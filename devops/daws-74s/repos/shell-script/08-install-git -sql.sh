#!/bin/bash

# out prog goad to install my sql
# check the user , exit the prog and inform user to run with sudo 
# if root user install mysql
# root user id -u --- is 0
# non root user id -u --- is non 0
# shell script bydefault will not stop no erro it is our responsibility to check the errors
# to check $? it will store the last command exit status
# $? - 0 means success
# $? - non 0 means failure

USERID=$(id -u) # executing the id -u and  saving in USERID variable
if [ $USERID -ne 0 ]
then 
    echo " ERROR :: please run with sudo or root user"
    exit 1  # command will exit with status 1 because it is not sudo 
fi

yum install mysql -y 

if [ $? -ne 0 ]
then 
    echo " installation of mysql is error "
    exit 1
else 
    echo " installation of mysql is success "
fi

yum install postfix -y
if [ $? -ne 0 ]
then 
    echo " installation of postfix is error "
    exit 1
else 
    echo " installation of postfix is success "
fi