#/bin/bash

echo "##############  Installing Docker  #############"
source docker-install.sh

echo "##############  Clone and Prep of Nova Docker  #############"
source novadocker-prep.sh

echo "##############  Installing ONOS  #############"
source onos-install.sh

echo "##############  Running ONOS  #############"
source onos-run.sh

echo "##############  Clone and Init of Devstack  #############"
source devstack-init.sh
