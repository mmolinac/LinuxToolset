#!/bin/bash
# Initial script to install Ansible and from there,
# the rest of configuration and tools.

echo "* Enter the SUDO password when required."
chmod u+x $0
echo "* Installing Ansible..."
sudo apt-get -qq install ansible
ansible-playbook -K playbooks/desktop-install-playbook.yml
