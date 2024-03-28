#! /bin/bash

# Checks file name in the specified path
file_path=/c/Users/vamsi/OneDrive/Desktop/DevOps_Preparation/Shell_Scripting_Practice/file_name.sh 

# extract the file name
filename=$(basename "$file_path") 

# prints file name along with extension
echo "$filename" 

# prints file name without extension
echo "Only File Name:${filename%.*}" 

# prints file extension
echo "File Extension Name:${filename##*.}" 


