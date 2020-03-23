#!/bin/bash
ffmpeg -f x11grab -y -s 1600x900 -thread_queue_size 18 -framerate 30 -i :0.0 -f pulse -i default -ac 2 -acodec mp3 -vcodec libx264 -preset veryfast -tune zerolatency -crf 20 -bufsize 5M screen.mkv

#ffmpeg -i /tmp/test.mkv -c:v libx264 -preset slower -tune film -crf 18 -bufsize 5M -c:a copy test.mkv
#rm /tmp/test.mkv

