#! /bin/bash

nums=("element-1" "element-2" "element-3")

# Accessing elements index wise

echo "1st Elemenet: ${nums[0]}" # prints 1st index element
echo "Last Elemenet: ${nums[-1]}" # prints last index element
echo "Last Elemenet: ${nums[-1]}" # prints last index element

echo "Length of array: ${#nums[@]}" # Length of array

echo "Last Elemenet: ${nums[${nums[@]}-1}" # also prints last index element from bash 4.0 version

