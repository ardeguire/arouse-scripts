#!/bin/bash
curl --output /home/adam/Dropbox/`date +%Y-%m-%d`_$1.mp3 --max-time $2 --silent http://arouseosu.com:8800/stream
