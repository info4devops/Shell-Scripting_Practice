#! /bin/bash
#set -x

echo -n 'Hello World.' | wc -m # 12

msg="Hello World."

result= echo -n $msg | wc -m
echo $result # 12

result1= echo  $msg | wc -m 
echo $result1 