#!/bin/bash

# put mounts in fstab
echo "
192.168.1.9:/volume1/website/SWARM_PROGRAMS /programs nfs defaults,auto 0 0
192.168.1.9:/volume1/website/DOCKER /website/DOCKER nfs defaults,auto 0 0
" >> /etc/fstab

# make folders and mounts them
mkdir -p /programs
mkdir -p /website/DOCKER
mount /programs
mount /website/DOCKER

## install and config apps
# install docker
zypper -n in docker
zypper -n in docker-compose
systemctl enable docker
systemctl start docker
# needed
zypper -n in git
# optional
zypper -n in emacs


# make webdev user
groupadd -g 1003 webster
useradd -d /home/webdev -G docker -s /bin/bash -u 53183 -g 1003 webdev
mkhomedir_helper webdev


