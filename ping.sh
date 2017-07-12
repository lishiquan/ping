#!/bin/bash
# 这是一个测试网路主机是否存活的脚本，脚本中第一行的编写方法比较重要，所以记录下来
for ip in 192.168.30.{1..255};
do ping $ip -c 2 &> /dev/null;
if [ $? -eq 0 ];
then
    echo $ip is alive
fi
done
