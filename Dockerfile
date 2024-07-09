FROM ubuntu:23.04
CMD /run.sh
ENV TZ=Europe/Rome
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && \
    apt install -y \
    nano telnet iputils-ping curl \
    ffmpeg \
    libgstreamer1.0-0 tzdata gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-rtsp \
    && rm -rf /var/lib/apt/lists/*
COPY ./run.sh /