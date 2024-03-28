#! /bin/bash

file_path=/c/Users/vamsi/OneDrive/Desktop/DevOps_Preparation/Shell_Scripting_Practice/file_name.sh # Checks file name in the specified path

filename=$(basename "$file_path") # extract the file name
echo "$filename" # prints file name along with extension

echo "File Name:${filename%.*}" # prints file name without extension

