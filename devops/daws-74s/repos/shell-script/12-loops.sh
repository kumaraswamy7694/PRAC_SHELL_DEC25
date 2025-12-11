#!/bin/bash
# all arg in $@
for i in $@
do  
    yum install $i -y 
done 