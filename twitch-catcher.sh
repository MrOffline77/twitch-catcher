#!/bin/bash

channel=yourchannel
format=mov

i=0

while [ $i -lt 1 ]
do

  # check if streamer is online and get stream
  streamlink https://www.twitch.tv/$channel best --hls-timeout=300 --twitch-disable-hosting --stdout 2> /dev/null | \
  # convert source to video $format
  ffmpeg -i - -acodec copy -vcodec copy -f $format $(date "+%Y.%m.%d-%H.%M.%S")-$channel.$format 2> /dev/null || \
  # if streamer is not online or stream breaks, wait 60 seconds and try again
  sleep 60 && continue

done

