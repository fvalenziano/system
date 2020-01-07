FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && \
            apt-get upgrade -y && \
            apt-get install -y \
            python3-distutils \
            anki


ENTRYPOINT [ "anki" ]
