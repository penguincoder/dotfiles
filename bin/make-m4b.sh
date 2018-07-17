#!/bin/bash
ffmpeg -i "concat:$(ls -1 *.mp3 | paste -sd "|" -)" -c:a aac -b:a 64k -f mp4 o.mp4
