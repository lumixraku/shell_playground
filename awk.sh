#!/bin/bash


# awk 主要用于格式化输出

#awk 过滤文件并格式化输出

# awk 将netstat.txt 按行读取 默认按照空格OR Tab 分成小组 print $1, $4 就是输出 第一组和第四组
# awk '{print $1, $4}' netstat.txt

#下面是格式化输出  格式化和C语言一样
# awk '{printf "%s --- %s\n", $1,$4}' netstat.txt


#awk 过滤命令的输出 (类似于grep  也是接在一个管道的后面)
#下面输出的是当前文件夹下文件大小 日期 和文件名
#NR 是当前行  NF是当前列
ls -l | awk '{printf "No.(%-2s) size:%-8s Date:%-3s/%-2s Name:%-15s totalCol:%-2s\n", NR, $5, $6, $7, $9, NF}'

function fileInfoByType(){
    type=$1


    #寻找大小为零的文件
    list=`find . -size 0`

    #根据后缀查找文件
    # ls -l | grep sh  不合理
    list=`find . -name "*.$type"`

    for item in $list; do
        echo $item | awk '{print $1}'
    done

}

# fileInfoByType js
