FROM debian:latest
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

RUN apt-get update -y && \
            apt-get upgrade -y && \
            apt-get install -y \
            apt-utils \
            apt-transport-https \
            ca-certificates \
            gnupg2 \
            wget

RUN wget https://updates.signal.org/desktop/apt/keys.asc && \
            apt-key add keys.asc && \
            echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | tee -a /etc/apt/sources.list.d/signal-xenial.list

RUN apt-get update -y && \
            apt-get install -y \
            signal-desktop

ENTRYPOINT [ "/usr/local/bin/signal-desktop" ]
