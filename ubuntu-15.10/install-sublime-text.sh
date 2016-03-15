#!/bin/bash

#install wget
sudo apt-get -y install wget

#download android sdk
cd /tmp
VERSION=r10e
DOWNLOAD_LINK=http://dl.google.com/android/ndk/android-ndk-$VERSION-linux-x86_64.bin
wget $DOWNLOAD_LINK 
chmod a+x android-ndk-$VERSION-linux-x86_64.bin 
./android-ndk-$VERSION-linux-x86_64.bin 
mv android-ndk-$VERSION android-ndk-linux
mv android-ndk-linux/ /opt/
echo "export NDK_HOME=/opt/android-ndk-linux" >> ~/.bash_profile
echo "export PATH=\$PATH:\$NDK_HOME:\$NDK_HOME/platform-tools" >> ~/.bash_profile
source ~/.bash_profile
