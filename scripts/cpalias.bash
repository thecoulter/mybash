#!/bin/bash

ssh $1 'cp ~/.bashrc ~/bak.bashrc'
scp $1 ~/mybash/.bash_alias ~/.bashrc

