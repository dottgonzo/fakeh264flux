docker run --network host -e "RTMPURI=rtmp://localhost:1935/live/aaa?psk=aaa" dottgonzo/fakeh264flux:stable

docker run --network host -e "RTSPURI=rtsp://localhost:8554/live" dottgonzo/fakeh264flux:stable
