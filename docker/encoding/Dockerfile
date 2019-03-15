FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
            ffmpeg


ENTRYPOINT [ "/bin/bash" ]
