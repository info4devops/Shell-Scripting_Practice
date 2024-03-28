#! /bin/bash

#Declare an Array of numbers and loop through

nums=(1 3 12)
for i in "${nums[@]}"
do
  echo "$i"
done