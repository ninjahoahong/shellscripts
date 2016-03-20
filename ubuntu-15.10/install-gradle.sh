#!/bin/bash 
cd /tmp 
GRADLE_VERSION=2.12
GRADLE_ZIP=gradle-${GRADLE_VERSION}-bin.zip 
if [ -e $GRADLE_ZIP ]; then 
  echo "Gradle already downloaded"
else
  echo "Start downloading the application"
  wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip
fi
GRADLE_FOLDER=gradle-${GRADLE_VERSION}
if [ -d $GRADLE_FOLDER ]; then 
  echo "Gradle folder already existed"
else
  echo "Extract Gradle zip"
  unzip $GRADLE_ZIP
fi

mv $GRADLE_FOLDER /opt/gradle
echo "export GRADLE_HOME=/opt/gradle" >> ~/.bash_profile
echo "export PATH=\$PATH:\$GRADLE_HOME/bin" >> ~/.bash_profile
source ~/.bash_profile

