#!/bin/bash



if [[ -f $1 ]]; then 
    USER_FILE=$1
else
    echo 'ERROR: first argument should be a file with user name'
fi


if [[ -f $2 ]]; then
    PASS_FILE=$2
else 
    echo 'ERROR: second argument should be a file with user passwords'
fi


if [[ -f $USER_FILE  && -f $PASS_FILE ]]; then
    sed -i 's/_//g' $PASS_FILE # there vas _ sighn in pass file. I remove it for matching with user name
    for username in `cat $USER_FILE `; do
        password=`cat $PASS_FILE | grep $username | cut -d: -f2`
        useradd -m -p $password $username
        echo "Greetings!\nHello $username, it nice to meet you!" > /home/$username/greeting.txt
        sed -i '$ s/bin\/sh/bin\bash/' /etc/passwd
    done
fi