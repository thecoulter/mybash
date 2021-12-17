#!/bin/bash


# BASHPATH=$(type -p setbash.bash)

BASHPATH=$(dirname "$(readlink -f "$0")")
pattern='/scripts'
BASHPATH=${BASHPATH/$pattern/}

echo $BASHPATH
echo "Chose one of the bash profiles to load

"
ls -a $BASHPATH/server

read bashchoice

cp ~/.bashrc ~/.oldbashrc
echo "source $BASHPATH/server/.bashrc" > ~/.bashrc
echo "source $BASHPATH/server/.$bashchoice" >> ~/.bashrc
source ~/.bashrc
