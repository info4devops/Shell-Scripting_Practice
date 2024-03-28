#! /bin/bash

numbers=("element-1" "element-2" "element-3")

# Adding elemets to array
echo ${numbers[*]}

numbers[0]="element0" # Assigning new element at 0th index
echo ${numbers[*]}

numbers[5]="element5" # Assigning new element at 5th index
echo ${numbers[*]}

numbers[6]="element6" # Assigning new element at 6th index
echo ${numbers[*]}

# Removing element from array
echo "All Elements: ${numbers[*]}" #prints all elements
unset numbers[-1] # removing last element from array
echo "All Elements: ${numbers[*]}" #prints all elements


