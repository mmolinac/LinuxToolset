#!/bin/bash
# Initial script to install Ansible and from there,
# the rest of configuration and tools.

echo "* Enter the SUDO password when required."
chmod u+x $0
which ansible > /dev/null
if [ $? -ge 1 ]; then
  echo "* Installing Ansible..."
  sudo apt-get -qq update
  sudo apt-get -qq install ansible
fi
ansible-playbook -K playbooks/desktop-install-playbook.yml
