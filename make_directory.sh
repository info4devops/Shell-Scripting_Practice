#! /bin/bash

FOLDER=test

if [ -d "$FOLDER" ]; then
    echo "Directory Exists"
else
    echo "Directory Not Exists, Hence Created with the name of $FOLDER"
    mkdir "$FOLDER"
fi