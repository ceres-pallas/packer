#! /bin/bash

sudo apt-get -y install g++ curl libssl-dev apache2-utils
sudo apt-get -y install git-core

mkdir -p /opt
cd /opt

git clone https://github.com/joyent/node.git
cd node
git checkout -b 0.10.33 v0.10.33
./configure
make
sudo make install
