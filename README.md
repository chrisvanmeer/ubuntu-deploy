# ubuntu-install
Vanilla install for my personal Ubuntu systems

### Install pre-requisites  
```
sudo apt update && sudo apt dist-upgrade -y && sudo apt install cowsay ansible -y
ansible-galaxy install geerlingguy.apache geerlingguy.mysql geerlingguy.php geerlingguy.php-mysql geerlingguy.security geerlingguy.firewall geerlingguy.php-versions geerlingguy.docker geerlingguy.postfix
```

### Deploy the magic
```
ansible-playbook ubuntu-deploy.yml
```
