#!/bin/bash


TARGET="kas.gpumine.org"
LOGPATH="./kas-ping.log"
GATEWAY=`ip route | awk '/^default/ {print $3}'`

ip_list=($TARGET $GATEWAY)

while true; do
  for ip in "${ip_list[@]}"; do
    echo -n `date` "---> $ip ">> $LOGPATH; 
    (ping $ip -c 1 -W 1 | grep "from" >> $LOGPATH) && (echo -n "" >> $LOGPATH) || (echo "Fail." >> $LOGPATH)
  done
  sleep 1
done
