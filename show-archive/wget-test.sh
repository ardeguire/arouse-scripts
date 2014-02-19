#!/bin/bash
wget -b -o wget_script.log -O /home/adam/Dropbox/`date +%Y-%m-%d`_$1.mp3 http://localhost:8800/stream
sleep $2
kill `pidof wget`
