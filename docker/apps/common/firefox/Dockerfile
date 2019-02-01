FROM alpine:latest
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apk add --no-cache \
            alsa-lib \
            ca-certificates \
            firefox-esr \
            hicolor-icon-theme \
            mesa-dri-intel \
            mesa-gl \
            ttf-dejavu

ENTRYPOINT [ "/usr/bin/firefox" ]
