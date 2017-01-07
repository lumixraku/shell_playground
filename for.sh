#!/bin/bash


# `...`  这样是调用Linux 系统的命令
for i in `seq 1 5`; do
    echo $i
done

echo "=================="

#in 后面可以是Linux的命令
for i in `ls`; do echo $i; done


echo "=================="
# for i in `cat input.sh`; do echo $i; done
 for i in `more input.sh`; do echo $i; done
