#! /bin/bash


msg="Hello World."

# FInding the lenght of msg
count=$(expr length "$msg")

echo $count # 12