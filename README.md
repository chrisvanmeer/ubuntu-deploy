# ubuntu-install
Install for my personal Ubuntu systems

### Update apt and install Ansible
```
sudo apt update && sudo apt install cowsay ansible -y
```

### Install needed Ansible roles
```
ansible-galaxy install geerlingguy.apache geerlingguy.mysql geerlingguy.php geerlingguy.php-mysql geerlingguy.security geerlingguy.firewall geerlingguy.php-versions geerlingguy.docker geerlingguy.postfix geerlingguy.ntp
```

### Deploy the magic
```
ansible-playbook ubuntu-deploy.yml
```
or
```
ansible-pull --url https://raw.githubusercontent.com/chrisvanmeer/ubuntu-deploy/main/ubuntu-deploy.yml
```
