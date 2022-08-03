#!/bin/bash

SERVER_LIST=/dotfiles/mybash/scripts/servers.txt

while read -u10 REMOTE_SERVER
do
#  ssh root@$REMOTE_SERVER 'reboot'
   ssh webdev@$REMOTE_SERVER $1
done 10< $SERVER_LIST
