#!/bin/bash

SERVER_LIST=~/mybash/scripts/servers.txt

while read -u10 REMOTE_SERVER
do
#  ssh root@$REMOTE_SERVER 'reboot'
   ssh -F ~/mybash/.ssh/config root@$REMOTE_SERVER $1
done 10< $SERVER_LIST
