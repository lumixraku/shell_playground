#!/bin/bash

#将输入的值赋值给n

read -p "Please input a number, it must greater than "1":" n

#定义变量的时候不需要 $   但是用到变量(引用变量)的时候 需要$符号
a=5
# 注意输出的时候要用双引号包括  否则'$a' 只是输出$a这个字符串
str="input is $n and a is $a"
echo "$str"

sum=$[$a+$n]   #数学运算需要 $[....]
echo $sum


#注意! shell 对空格有要求 空格并不可以随意加减
# a = 5 这样是错误的
