#!/bin/bash

SERVER_LIST=./servers.txt

while read -u10 REMOTE_SERVER
do

        ssh -F ~/mybash/.ssh/config $REMOTE_SERVER 'chmod +x sethost.bash'
#    scp -F ~/mybash/.ssh/config sethost.bash $REMOTE_SERVER:~/

done 10< $SERVER_LIST
