#! /bin/bash
#set -x # debug mode

nums=("element-1" "element-2" "element-3")

# Accessing all elements
echo "All Elements using Index: ${nums[@]}" # prints all elemnts

# Accessing all elements using for loop
echo "For Loop"
for i in "${nums[@]}"
do
  echo "$i"
done

