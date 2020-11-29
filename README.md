# Twitch Catcher

Can record streams from Twitch and automatically convert them to the desired format. For all who want to save streams locally for a longer period of time. 
The program checks every 60 seconds if the streamer is online and starts recording. If the stream or the internet connection is interrupted, the recording starts again after 60 seconds. 
You can adjust the quality in the script. By default the best possible quality is loaded. Twitch channel hosting will be ignored. 

## Prerequisites

* streamlink
* ffmpeg
* linux/unix OS or bash interpreter
* screen 

## Installation 

1. Clone this repo
2. Edit the `channel` and the `format` variable on the top of the script
3. Run script in screen: 
```
screen -S (enter) 
cd /path/you/want/to/save/the/stream/at
/path/to/script/twitch-catcher.sh
```


