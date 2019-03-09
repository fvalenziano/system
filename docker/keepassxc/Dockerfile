FROM ubuntu:18.10
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8
ENV QT_X11_NO_MITSHM=1

RUN apt-get update && \
            apt-get install -y \
            keepassxc

ENTRYPOINT [ "/usr/bin/keepassxc" ]
