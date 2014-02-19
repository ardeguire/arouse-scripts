#!/bin/bash
wget -b -o wget_script.log -O /home/adam/Dropbox/$1.mp3 http://localhost:8800/stream
sleep $2
kill `pidof wget`
