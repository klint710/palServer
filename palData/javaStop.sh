#!/bin/bash

# 获取进程ID（PID）
pid=$(ps aux | grep 'palWorldManager-0.0.1-SNAPSHOT.jar' | grep -v grep | awk '{print $2}')

# 检查是否找到了进程ID
if [ -n "$pid" ]; then
    echo "Found PID: $pid"
    # 杀死进程
    kill -9 $pid
    echo "Process with PID $pid killed."
else
    echo "Process not found."
fi
