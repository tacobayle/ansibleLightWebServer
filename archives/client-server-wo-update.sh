#!/bin/bash
#ansible-playbook -i hosts 01-ssh-key.yml
#ansible-playbook -i hosts 02-ubuntu14.04-upgrade-install-docker.yml
ansible-playbook -i hosts --extra-vars="iface=eth1 ip=2.255.255.254/8" 03-ipconfig.yml
ansible-playbook -i hosts --extra-vars="iface=eth2 ip=172.16.1.254/24" 03-ipconfig.yml
ansible-playbook -i hosts --extra-vars="iface=eth2 ip=172.16.1.253/24" 03-ipconfig.yml
ansible-playbook -i hosts --extra-vars="iface=eth2 ip=172.16.1.252/24" 03-ipconfig.yml
ansible-playbook -i hosts --extra-vars="iface=eth2 ip=172.16.1.251/24" 03-ipconfig.yml
ansible-playbook -i hosts --extra-vars="ip=172.16.1.254 namedocker=nginx1" 05-launch-docker.yml
ansible-playbook -i hosts --extra-vars="ip=172.16.1.253 namedocker=nginx2" 05-launch-docker.yml
ansible-playbook -i hosts --extra-vars="ip=172.16.1.252 namedocker=nginx3" 05-launch-docker.yml
ansible-playbook -i hosts --extra-vars="ip=172.16.1.251 namedocker=nginx4" 05-launch-docker.yml
ansible-playbook -i hosts 06-http-script-transfer.yml
