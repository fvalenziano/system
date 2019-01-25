FROM alpine:edge
LABEL MAINTAINER="frank@valenziano.us"
ENV LANG C.UTF-8

RUN apk add --update rtorrent && \
    mkdir -p \
        /dist \
        /config \
        /session \
        /socket \
        /watch/load \
        /watch/start \
        /downloads && \
    ln -sf /dev/stdout /var/log/rtorrent-info.log && \
    ln -sf /dev/stderr /var/log/rtorrent-error.log

VOLUME [ "/config", "/session", "/socket", "/watch", "/downloads" ]

CMD [ "rtorrent" ]
