#!/bin/bash
NODE_VERSION=v0.12.7

#Install g++
sudo apt-get install -y g++
#Install dependencies
sudo apt-get install -y libssl-dev

cd /tmp/
wget https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION.tar.gz -q
tar -xsvf node-$NODE_VERSION.tar.gz
cd node-$NODE_VERSION/ 
./configure --prefix=/opt/node && make --quiet && sudo make install
echo "export PATH=\$PATH:/opt/node/bin" >> ~/.bashrc
source ~/.bashrc
