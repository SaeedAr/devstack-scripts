#/bin/bash

sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock

echo "##############  Installing Docker  #############"
source docker-install.sh

echo "##############  Clone and Prep of Nova Docker  #############"
cd ~/devstack-scripts
source novadocker-prep.sh

echo "##############  Installing ONOS  #############"
cd ~/devstack-scripts
source onos-install.sh

echo "##############  Running ONOS  #############"
cd ~/devstack-scripts
source onos-run.sh

echo "##############  Clone and Init of Devstack  #############"
cd ~/devstack-scripts
source devstack-init.sh
