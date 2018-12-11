FROM linuxserver/rutorrent

# set labels
LABEL maintainer="Nightah"

# modifications
RUN \
 echo "**** apply patch for /downloads/ ****" && \
 sed -i '7d;32,35d' /etc/cont-init.d/50-config

# ports and volumes
EXPOSE 80
VOLUME /config /downloads