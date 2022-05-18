# Derived from docker-spotify-pulseaudio Project by Terlar Larsen (https://github.com/terlar/docker-spotify-pulseaudio) 
FROM ubuntu:18.04

# Install PulseAudio
WORKDIR /usr/src
RUN apt-get update \
    && apt-get install -y xdg-utils libxss1 pulseaudio \
    && apt-get clean \
    && echo enable-shm=no >> /etc/pulse/client.conf
# Install Firefox
RUN apt-get install -y firefox libcanberra-gtk3-module libpci3

# PulseAudio server.
ENV PULSE_SERVER /run/pulse/native

#COPY docker-entrypoint.sh /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]

ENTRYPOINT ["firefox"]
