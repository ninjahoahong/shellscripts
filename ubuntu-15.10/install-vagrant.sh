cd /tmp/

#!/bin/bash 
cd /tmp 
VAGRANT_VERSION=1.8.1
VAGRANT_ZIP=vagrant_${VAGRANT_VERSION}_x86_64.deb
if [ -e $VAGRANT_ZIP ]; then 
  echo "Vagrant already downloaded"
else
  echo "Start downloading the application"
  wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/${VAGRANT_ZIP}
fi
sudo dpkg -i ${VAGRANT_ZIP}
