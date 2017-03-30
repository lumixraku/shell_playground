#!/bin/bash

port=$1
# echo "$port"

echo 'get pid'
# lsof 根据port 查到对应的pid
pid=''
pid=`lsof -i:$port | sed -n '2p' | awk '{printf "%s\n", $2}'`
echo $pid

#kill
if [ ! -n $pid ]; then
    echo 'kill'
    killcmd=`kill -9 $pid`
fi
