#/bin/bash

screen -dmS onos
sleep 1

screen -S onos -X screen -t shell
sleep 1

screen -S onos -p shell -X stuff $'sudo /opt/onos/bin/onos-service start\n'
sleep 5

screen -S onos -X screen -t log
sleep 1

screen -S onos -p log -X stuff $'tail -f /opt/onos/apache-karaf-3.0.8/data/log/karaf.log\n'
sleep 1

sleep 5

screen -S onos -p shell -X stuff $'app activate org.onosproject.ovsdb-base\n'
sleep 1
screen -S onos -p shell -X stuff $'app activate org.onosproject.ovsdbhostprovider\n'
sleep 1
screen -S onos -p shell -X stuff $'app activate org.onosproject.ovsdb\n'
sleep 1
screen -S onos -p shell -X stuff $'app activate org.onosproject.vtn\n'
sleep 1
screen -S onos -p shell -X stuff $'app activate org.onosproject.openstacknode\n'
sleep 1
screen -S onos -p shell -X stuff $'app activate org.onosproject.openstacknetworking\n'
