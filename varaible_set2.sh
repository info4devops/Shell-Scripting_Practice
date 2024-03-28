#!/bin/bash

variable1=""
if [[ ! ${variable1+x}  ]]
then
  echo 'variable1 is not set'
else
  echo 'variable1 is set'
fi

if [[ ! ${variable2+x}  ]]
then
  echo 'variable2 is not set or unset'
else
  echo 'variable2 is  set'
fi