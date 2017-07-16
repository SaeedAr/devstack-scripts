#/bin/bash

sudo apt-get update
sudo apt-get install -y python-pip python-dev
rm -rf /opt/stack/nova-docker
sudo mkdir -p /opt/stack
sudo git clone https://git.openstack.org/openstack/nova-docker /opt/stack/nova-docker
cd /opt/stack/nova-docker
sudo git checkout stable/ocata && sudo git pull --ff-only origin stable/ocata
sudo pip install .
