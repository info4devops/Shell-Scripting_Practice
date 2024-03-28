#! /bin/bash

#Declare an Array of strings and loop through


nums=("element-1" "element-2" "element-3")
for i in "${nums[@]}"
do
  echo "$i"
done