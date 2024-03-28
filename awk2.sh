#! /bin/bash

msg="Hello World."
count=${#msg}

echo "$count" # 12

count=$(echo -n "$msg" | awk '{print length}')
echo $count # 12