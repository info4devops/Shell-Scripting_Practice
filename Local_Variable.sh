#! /bin/bash #Shebang line


setAge() {
    echo "Local Variable Age: $AGE"
}
AGE=40
setAge
echo "Global Age: $AGE"