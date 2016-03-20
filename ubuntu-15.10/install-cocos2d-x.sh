#!/bin/bash

cd /tmp

# build tool
sudo apt-get install -y python
sudo apt-get install -y ant

# download cocos2d-x
VERSION=3.10
cd /opt
wget http://cocos2d-x.org/filedown/cocos2d-x-${VERSION}.zip
SRC=cocos2d-x-${VERSION} 
unzip ${SRC}.zip
cd /opt/$SRC
python download-deps.py
./setup.py
cd ..
rm  ${SRC}.zip
source ~/.bashrc
