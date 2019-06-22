#!/bin/bash

function create() {
    cd
    python create.py $1
    cd /yours/Projects/Directory/$1
    git init
    git remote add origin https://github.com:Username/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master

}