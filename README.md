# ubuntu-deploy
Install for my personal Ubuntu systems

## Install Ansible PPA and use that to install Ansible
Intentially doing this because the default Ansible version in Ubuntu 20.04 is 2.9.6 that has a bug that breaks an NTP role.
```
sudo apt-add-repository ppa:ansible/ansible -y && sudo apt update && sudo apt install ansible -y
```

## Clone this repo on the system you want to configure
```
git clone https://github.com/chrisvanmeer/ubuntu-deploy.git
```

## Role variables
I pretty much use default settings on Jeff Geerling's roles. The only real change is that for my systems, I sometimes install Apache to listen on localhost only. If you want to change this, change the following variable in the playbook to:  
```
apache_listen_ip: "*"
```
I run the sshd on the default tcp/22 port, but you can change this in the following variable in the playbook:
```
security_ssh_port: <port>
```
And then you might want to add the tcp/80 and tcp/443 port to the firewall open ports and possibly change tcp/22 to the port you have assigned to the sshd:  
```
firewall_allowed_tcp_ports:
      - "22"
      - "80"
      - "443"
```

## Install required Ansible roles and run the playbook
Using a playbook for Ubuntu 20.04 LTS for this example
```
cd ubuntu-deploy
ansible-galaxy install -r requirements.yml
ansible-playbook ubuntu-20-deploy.yml
```

## :coffee: Coffee break
Running this setup usually a maximum of 10 minutes. Perfect time for a coffee break.
