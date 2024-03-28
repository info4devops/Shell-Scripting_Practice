#! /bin/bash

message="Hello World, Welcome."

#Lower-Case
# Coverting Upper to Lower
echo "$message" | tr '[:upper:]' '[:lower:]'

# Alternative you can user below command as well
echo "$message" | tr 'A-Z' 'a-z' 

#Upper-Case
# Coverting Lower to Upper
echo "$message" | tr '[:lower:]' '[:upper:]'

# Alternative you can user below command as well
echo "$message" | tr  'a-z' 'A-Z'
