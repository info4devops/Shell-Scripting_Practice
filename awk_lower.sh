#! /bin/bash

message="Hello World, Welcome"

# Convert to Lower
echo "$message" | awk '{print tolower($0)}'

# Convert to Upper
echo "$message" | awk '{print toupper($0)}'

