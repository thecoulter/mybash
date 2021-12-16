#!/bin/bash


BASHPATH=$(type -p setbash.bash)
pattern='/scripts/setbash.bash'
BASHPATH=${BASHPATH/$pattern/}

echo "Chose one of the bash profiles to load

"
ls -a $BASHPATH/server

read bashchoice

echo "source $BASHPATH/server/.bashrc"
echo "source $BASHPATH/server/$bashchoice"

