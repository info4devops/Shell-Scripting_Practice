#! /bin/bash

mainstring='Welcome to w3schools'

if echo "$mainstring" | grep -q "w3schools"
then
  echo "w3schools exists in the main string"
fi