#!/bin/bash

#将输入的值赋值给n
read -p "Please input a number, it must greater than "1":" n

#数学计算要用’[ ]’括起来并且外头要带一个’$’。脚本结果为：
n=$[$n%2]
echo "n is $n"
case $n in

0)
    echo "偶数"
    ;;

1)
    echo "奇数"
    ;;

*)
    echo "default"
    ;;

esac
