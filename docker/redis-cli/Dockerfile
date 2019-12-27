FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && \
            apt-get upgrade -y && \
            apt-get install -y \
            apt-utils \
            build-essential \
            curl

RUN cd /tmp &&\
            curl http://download.redis.io/redis-stable.tar.gz | tar xz &&\
            make -C redis-stable &&\
            cp redis-stable/src/redis-cli /usr/local/bin &&\
            rm -rf /tmp/redis-stable

ENTRYPOINT [ "/bin/bash" ]
