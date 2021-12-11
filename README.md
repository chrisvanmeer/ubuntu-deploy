# ubuntu-deploy
Install for my personal Ubuntu systems

## Install pip and latest version of Ansible
```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
sudo python3 get-pip.py
sudo python3 -m pip install ansible
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
