# ubuntu-deploy
Install for my personal Ubuntu systems

## Install Ansible PPA and use that to install Ansible
Intentially doing this because the default Ansible version in Ubuntu 20.04 is 2.9.6 that has a bug that breaks an NTP role.
```
sudo apt-add-repository ppa:ansible/ansible -y && sudo apt update && sudo apt install ansible -y
```

## Install required Ansible roles
```
ansible-galaxy install -r requirements.yml
```

## How to use
Run the playbook for configuring an Ubuntu 20.04 system
```
ansible-playbook ubuntu-20-deploy.yml
```
