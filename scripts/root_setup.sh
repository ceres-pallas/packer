#!/bin/bash

set -e

# Updating and Upgrading dependencies
apt-get update -y -qq > /dev/null
apt-get upgrade -y -qq > /dev/null

# Install necessary libraries for guest additions and Vagrant NFS Share
apt-get -y -q install linux-headers-$(uname -r) build-essential dkms nfs-common

# Setup sudo to allow no-password sudo for "admin"
groupadd -r admin
usermod -a -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

# Setup vagrant ssh keys
mkdir ~/.ssh
wget -qO- https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub >> ~/.ssh/authorized_keys

reboot
sleep 60
