# ubuntu-deploy
Install for my personal Ubuntu systems

### Update apt and install Ansible
```
sudo apt update && sudo apt install cowsay ansible -y
```

### Install required Ansible roles
```
ansible-galaxy install -r requirements.yml
```

### Deploy the magic
```
ansible-playbook ubuntu-20-deploy.yml
```
or
```
ansible-pull --url https://github.com/chrisvanmeer/ubuntu-deploy ubuntu-20-deploy.yml
```
