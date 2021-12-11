# ubuntu-deploy
Install for my personal Ubuntu systems

## Update package manager and install Ansible
```
sudo apt update && sudo apt install ansible -y
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
