#!/bin/bash
wget -b -o crash-theory_script.log -O /home/adam/Dropbox/crash-theory.mp3 http://localhost:8800/stream
sleep $1
kill `pidof wget`
sleep 10
cp /home/adam/Dropbox/crash-theory.mp3 /home/adam/ct/ct-`ls -1 /home/adam/ct | wc -l`.mp3
