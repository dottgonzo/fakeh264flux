#!/bin/bash

if [[ -z $RTMPURI && -z $RTSPURI ]]; then
echo 'no rtmp/rtsp uri provided'
exit 1
fi

if [[ -z $RTMPURI ]]; then
echo "STREAMING RTSP TO $RTSPURI"

gst-launch-1.0 -v videotestsrc  ! clockoverlay ! x264enc ! rtspclientsink location=$RTSPURI

else 
echo "STREAMING RTMP TO $RTMPURI"

gst-launch-1.0 -e videotestsrc ! clockoverlay ! queue ! videoconvert ! x264enc ! flvmux streamable=true ! queue ! rtmpsink location=$RTMPURI

fi