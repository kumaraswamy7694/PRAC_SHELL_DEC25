#!/bin/bash
USERID=$(id -u) # executing the id -u and  saving in USERID variable
# validate function should previous command and inform user it is success ofr failure

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " $2 ....failure "
        exit 1
    else 
        echo " $2 ... success "
    fi

}
if [ $USERID -ne 0 ]
then 
    echo " ERROR :: please run with sudo or root user"
    exit 1  # command will exit with status 1 because it is not sudo 
fi

yum install mysql -y 
VALIDATE $? "installing mysql"

yum install postfix -y
VALIDATE $? "installing postfix"