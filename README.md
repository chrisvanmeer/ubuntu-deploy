# ubuntu-deploy

Install for my personal Ubuntu systems

## Install Ansible PPA and install Ansible

Intentially doing this because the default Ansible version in Ubuntu 20.04 is 2.9.6 that has a bug that breaks an NTP role.

```
sudo apt-add-repository ppa:ansible/ansible -y && sudo apt update && sudo apt install git ansible -y
```

## Clone this repo on the system you want to configure

```
git clone https://github.com/chrisvanmeer/ubuntu-deploy.git
```

## Role variables

I use a lot of roles from Jeff Geerling ([@geerlingguy](https://github.com/geerlingguy)) and pretty much use the default settings. The only real change is that for my systems, I sometimes install Apache to listen on localhost only. If you want to change this, change the following variable in the playbook to:

```
apache_listen_ip: "*"
```

I run the sshd on the default tcp/22 port, but you can change this in the following variable in the playbook:

```
security_ssh_port: <port>
```

And then you might want to add the tcp/80 and tcp/443 port to the firewall open ports and possibly change tcp/22 to the port you have assigned to the sshd:

```
    ufw_rules:
      - rule: allow
        to_port: "{{ security_ssh_port }}"
        protocol: tcp
        comment: 'Allow incoming SSH'
      - rule: allow
        to_port: "{{ apache_listen_port }}"
        protocol: tcp
        comment: 'Allow incoming HTTP'
      - rule: allow
        to_port: "{{ apache_listen_port_ssl }}"
        protocol: tcp
        comment: 'Allow incoming HTTPS'
```

In the `xtra_apt_packages` variable, I keep a list of the packages I use frequently.

## Install required Ansible roles

```
cd ubuntu-deploy
ansible-galaxy install -r requirements.yml
```

## Run the playbook

Using a playbook for Ubuntu 20.04 LTS for this example

```
ansible-playbook ubuntu-20-deploy.yml
```

## :coffee: Coffee break

Running this setup usually takes a maximum of 10 minutes. Perfect time for a coffee break.
