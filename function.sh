#!/bin/bash
function f1() {
    #类似于js中的arguments  用$1 $2.. 得到参数
    var1=$1
    var2=$2
    echo "$1, $2 : $3"
}
# f1 haha xixi   #没有加上$haha 就表示haha本身就是变量值  而非变量名



# function f1(){
#     console.log('f1');
# }
#
#
# function runByName(name){
#     window[name]();
# }
# runByName('f1');


function f2(){
    f1 $1 $2 "call by f2"
}


#函数定义时() 都是可以省去的
function callByName {
    fnName=$1
    echo "1st param=$1"

    # if [条件语句]
    if [$1 eq ""];then
        fnName=f1
    fi
    # 可以和js一样  根据名称调用不同的函数
    $fnName hoho enen
}
callByName f2
