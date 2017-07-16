#/bin/bash

cd /opt/stack
sudo git clone https://git.openstack.org/openstack-dev/devstack
cd /opt/stack/devstack
sudo git checkout stable/ocata && sudo git pull --ff-only origin stable/ocata
cd ~/devstack-scripts
cp local.conf /opt/stack/devstack
