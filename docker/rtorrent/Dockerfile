FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && \
            apt-get upgrade && \
            apt-get install -y \
            rtorrent

RUN adduser --disabled-password rtorrent && \
            mkdir -p {/srv/torrent/downloads, /srv/torrent/.session} && \
            chmod 775 -R /srv/torrent && \
            chown rtorrent:rtorrent -R /srv/torrent && \
            chown rtorrent:rtorrent /home/rtorrent/.rtorrent.rc


ENTRYPOINT [ "/bin/bash" ]
