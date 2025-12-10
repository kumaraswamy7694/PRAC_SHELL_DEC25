#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " $2 .... $R failure $N "
        exit 1
    else 
        echo " $2 ...  $R success $N "
    fi

}
USERID=$(id -u) # executing the id -u and  saving in USERID variable
# validate function should previous command and inform user it is success ofr failure


if [ $USERID -ne 0 ]
then 
    echo " ERROR :: please run with sudo or root user"
    exit 1  # command will exit with status 1 because it is not sudo 
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"

yum install postfix -y &>> $LOGFILE
VALIDATE $? "installing postfix"