#!/bin/bash

# Directory where to store repo
MyRepoPath="~/Documents/repos/"

# Pull get repo and run scripts to set it up

cd $MyRepoPath
git clone andrew@128.192.9.183:/offsitesync/WEBSITE/REPOS/GLYCAM_Dev_Env.git
cd GLYCAM_Dev_Env/V_2
bash ./bin/build.sh
bash ./bin/git-setup.sh
bash ./bin/compile.sh
# bash ./bin/start.sh
