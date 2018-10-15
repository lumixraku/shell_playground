#!/bin/bash

port=$1
# echo "$port"

echo 'get pid'
# lsof 根据port 查到对应的pid
pid=''
pid=`lsof -i:$port | sed -n '2p' | awk '{printf "%s\n", $2}'`
echo $pid

#kill

#kill
echo ${#pid}
if [ ${#pid} -gt 0 ]; then
    echo 'kill'
    echo $pid
    killcmd=`kill -9 $pid`
fi

