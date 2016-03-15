#!/bin/bash

#install wget
sudo apt-get -y install wget

#install jdk
sudo apt-get -y install openjdk-7-jdk

#download android sdk
cd /tmp
SDK_DOWNLOAD_LINK=http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
wget $SDK_DOWNLOAD_LINK 
tar -zxvf android-sdk_r24.4.1-linux.tgz 
mv android-sdk-linux/ /opt/
echo "export ANDROID_HOME=/opt/android-sdk-linux" >> ~/.bash_profile
echo "export PATH=\$PATH:\$ANDROID_HOME/tools:\$ANDROID_HOME/platform-tools" >> ~/.bash_profile
source ~/.bash_profile
