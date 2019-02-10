FROM debian:jessie
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && \
            apt-get install -y \
            apt-utils \
            libasound2 \
            libatomic1 \
            libgconf-2-4 \
            libgtk2.0-0 \
            libnotify4 \
            libnspr4 \
            libnss3 \
            libxss1 \
            libxtst6 \
            libappindicator1 \
            libc++1 \
            xdg-utils \
            wget
RUN wget https://dl.discordapp.net/apps/linux/0.0.8/discord-0.0.8.deb -O /tmp/discord.deb && \
            cd /tmp && \
            dpkg -i discord.deb && \
            apt-get install -f

ENTRYPOINT [ "/usr/bin/discord" ]
