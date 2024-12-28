pids=$(ps -ef | grep "PalServer" | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "PalServer is running."
else
    echo "restarting PalServer..."
    nohup $HOME/Steam/steamapps/common/PalServer/PalServer.sh > $HOME/palData/log/logfile.log 2>&1 &
    echo "PalServer restart success."
fi
