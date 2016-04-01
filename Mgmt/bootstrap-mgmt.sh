#!/usr/bin/env bash

# install ansible
apt -y update
apt -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt -y update
apt -y install ansible

# copy examples into /home vagrant from inside the mgmt node
cp -a /vagrant/examples/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by vagrantfile
cat >> /etc/hosts <<EOL

# vagrant env nodes
10.58.0.10 mgmt
10.58.0.69 lb
10.58.0.21 web1
10.58.0.22 web2
10.58.0.23 web3
10.58.0.24 web4
10.58.0.25 web5
10.58.0.26 web6
10.58.0.27 web7
10.58.0.28 web8
10.58.0.29 web9
EOL
