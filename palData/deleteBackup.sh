#!/bin/bash

# 获取今天是星期几，0表示星期日，1-6表示周一到周六
today=$(date +%u)

# 如果今天不是星期日（即不是0），则退出脚本，因为只在星期日执行删除操作
#if [ "$today" -ne 7 ]; then
#    echo "Today is not Sunday. Exiting..."
#    exit 0
#fi

# 获取上周日的日期
last_sunday=$(date -d 'last Sunday' +%Y-%m-%d)

echo "Deleting data before ${last_sunday}"

# 使用find命令删除上周日（含）之前的所有数据（假设要删除/path/to/data/目录下的文件）
find $HOME/palData/palBackup/ -type f ! -newermt "${last_sunday}" -delete
