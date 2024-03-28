#! /bin/bash

input="one-two-three"
IFS='-' array=($input)
for element in "${array[@]}"
do
 echo "$element"
done