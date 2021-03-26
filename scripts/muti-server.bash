#!/bin/bash

SERVER_LIST=./servers.txt

while read -u10 REMOTE_SERVER
do

    ssh -F ~/mybash/.ssh/config $REMOTE_SERVER 'rm -r /var/lib/docker/*'

done 10< $SERVER_LIST
