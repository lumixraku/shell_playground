#!/bin/bash


#调用linux系统命令 使用``
srcDir=`pwd`
echo $srcDir

# for filePath in `ls`; do
#     echo $filePath
# done

for filePath in `find . -name "*.js"`; do
    echo $filePath
done




# for filePath in `find $srcDir -name $reg -type f`
# do
#     fileName=`echo $filePath | awk -F '/' '{print $NF}'`
#     md5Str=`getSha1 $filePath`
#     #去掉后缀的文件名
#     srcPreFileName=`$getFileNameFn $fileName`
#     disFileName=${srcPreFileName}_${md5Str}.${fileType}
#     cp $filePath ${distDir}/$disFileName
# done
