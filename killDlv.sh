#!/bin/bash

port=$1
# echo "$port"

echo 'get dlv'
# lsof 根据port 查到对应的pid
pid=''
# pid=`lsof -i:$port | sed -n '2p' | awk '{printf "%s\n", $2}'`
pid=`ps aux | grep dlv | grep 2345 | awk '{printf "%s\n", $2}'`
echo $pid

#kill
if [ -n $pid ]; then
    echo 'kill'
    killcmd=`kill -9 $pid`
fi
