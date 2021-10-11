#!/bin/bash

# disable networkmanager
systemctl disable NetworkManager
systemctl stop NetworkManager

# diable firewall
systemctl disable firewalld
systemctl stop firewalld

# enable ssh
systemctl enable sshd
systemctl start sshd


