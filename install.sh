#!/bin/bash
# Initial script to install Ansible and from there,
# the rest of configuration and tools.

chmod u+x $0
echo "Installing Ansible..."
sudo apt-get -qq install ansible

