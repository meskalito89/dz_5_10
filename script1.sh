#!/bin/bash


if [[ -f $1 ]]; then 
    USER_FILE=$1
else
    echo 'ERROR: first argument should be a file with user name'
fi


if [[ -f $2 ]]; then
    PASS_FILE=$2
else 
    echo 'ERROR: second argument shold be a file with user passwords'
fi


if [[ -f $USER_FILE  && -f $PASS_FILE ]]; then
    echo 'asdf'
else
    echo 'ERROR'
fi