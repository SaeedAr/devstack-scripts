#/bin/bash

sudo apt-get install software-properties-common -y && \
sudo add-apt-repository ppa:webupd8team/java -y && \
sudo apt-get update && \
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections && \
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y
cd /opt
export ONOS_VERSION=1.10.2
sudo wget -c http://downloads.onosproject.org/release/onos-$ONOS_VERSION.tar.gz
sudo tar xzf onos-$ONOS_VERSION.tar.gz
sudo mv onos-$ONOS_VERSION onos
cd /opt/stack
sudo git clone https://github.com/openstack/networking-onos
cd networking-onos
pip install .
