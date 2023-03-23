#!/bin/bash


LOGPATH="./kas-ping.log"
TARGET="kas.gpumine.org"

while true; do
echo -n `date` "---> ">> $LOGPATH; 
(ping $TARGET -c 1 -W 1|grep "from">> $LOGPATH)  && (echo -n "" >> $LOGPATH) || (echo "Fail.">> $LOGPATH)

sleep 1
done
