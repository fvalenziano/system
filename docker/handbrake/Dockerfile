FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils && \
            add-apt-repository ppa:stebbins/handbrake-releases && \
            apt-get update && apt-get install -y \
            handbrake

ENTRYPOINT [ "/bin/bash" ]
