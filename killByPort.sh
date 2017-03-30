#!/bin/bash

port=$1
# echo "$port"

echo 'get pid'
# lsof 根据port 查到对应的pid
pid=''
pidrs=`lsof -i:$port | sed -n '2p'`

echo "pid_rs_line=$pidrs"

#加引号是因为这个pidrs是带有空格的字符串
if [ -n "$pidrs" ]
then
    pid=`echo $pidrs | awk '{printf "%s\n", $2}'`
    echo "pid=$pid"
fi


#kill
if [ -n $pid ]; then
    echo 'kill'
    killcmd=`kill -9 $pid`
fi

