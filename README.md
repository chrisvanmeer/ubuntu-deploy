# ubuntu-deploy
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
ansible-playbook ubuntu-20-deploy.yml
```
or
```
ansible-pull --url https://github.com/chrisvanmeer/ubuntu-deploy ubuntu-20-deploy.yml
```
