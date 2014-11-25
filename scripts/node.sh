#! /bin/bash

sudo apt-get -y install g++ curl libssl-dev apache2-utils
sudo apt-get -y install git-core

mkdir /tmp
cd /tmp

git clone https://github.com/joyent/node.git
cd node
git checkout -b v0.10.33 0.10.33
./configure
make
sudo make install
