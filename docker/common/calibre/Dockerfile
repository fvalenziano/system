FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && \
            apt-get upgrade && \
            apt-get install -y \
            wget

RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

ENTRYPOINT [ "/bin/bash" ]
