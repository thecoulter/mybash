#!/bin/bash

# Change username for adding to docker group.
Myuser="andrew"
MyRepoPath="/extradrive/repos/"


# Install docker ce
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $Myuser
echo "Script done logout of user to apply adding user to docker"

# Install docker compose version is hard coded.

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Pull get repo and run scripts to set it up

cd $MyRepoPath
git clone andrew@128.192.9.183:/offsitesync/WEBSITE/REPOS/GLYCAM_Dev_Env.git
cd GLYCAM_Dev_Env/V_2
bash ./bin/build.sh
bash ./bin/git-setup.sh
bash ./bin/compile.sh
bash ./bin/start.sh
