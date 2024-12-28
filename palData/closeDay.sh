# 查找正在运行的 PalServer 进程并杀死它
pids=$(ps -ef | grep "PalServer" | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "Stopping PalServer..."
    for pid in $pids; do
        echo "Stopping PalServer with PID $pid..."
        kill "$pid"
    done
    echo "All PalServer processes stopped."
else
    echo "PalServer is not running."
fi

