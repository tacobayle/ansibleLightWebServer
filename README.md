# aviLsc

## Goals
This Ansible playbooks deploy very light web server based on docker

## Prerequisites:
1. Make sure Vm(s) has/have been deployed with docker

## Environment:

Playbook(s) has/have been tested against:

### Ansible

```
avi@ansible:~/aviLsc$ ansible --version
ansible 2.9.5
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/home/avi/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /home/avi/.local/lib/python2.7/site-packages/ansible
  executable location = /home/avi/.local/bin/ansible
  python version = 2.7.12 (default, Oct  8 2019, 14:14:10) [GCC 5.4.0 20160609]
avi@ansible:~/aviLsc$
```

## Input/Parameters:

1. An inventory file with the following format (could be 1 or 3 controller hosts):

```
---
all:
  children:
    se:
      hosts:
        192.168.139.131:
    controller:
      hosts:
        192.168.139.130:
    cs:
      hosts:
        192.168.142.131:


  vars:
    ansible_user: avi
    ansible_ssh_private_key_file: "/home/avi/.ssh/id_rsa.local"
```

2. All the paramaters/variables are stored in var/params.yml

## Use the ansible playbook to
1. Configure IPs on the VM
2. Launch docker based on pre defined docker image

## Run the playbook:
ansible-playbook -i hosts main.yml

## Improvement:
Handle route option based on condition
