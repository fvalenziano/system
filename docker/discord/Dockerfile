FROM ubuntu:18.04
LABEL MAINTAINER "frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y \
    sudo \
    libcanberra-gtk* \
    dbus-x11

RUN apt-get install -y \
    apt-utils \
    gconf-service \
    gconf-service-backend \
    gconf2-common \
    libappindicator1 \
    libatomic1 \
    libc++1 \
    libc++abi1 \
    libgconf-2-4 \
    libindicator7 \
    libxss1 \
    libnss3 \
    libnspr4 \
    libnotify4 \
    wget
    
RUN wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" && \
    dpkg -i ~/discord.deb

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/discord && \
    echo "discord:x:${uid}:${gid}:Discord,,,:/home/discord:/bin/bash" >> /etc/passwd && \
    echo "discord:x:${uid}:" >> /etc/group && \
    echo "discord ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/discord && \
    chmod 0440 /etc/sudoers.d/discord && \
    chown ${uid}:${gid} -R /home/discord

RUN chown discord /home/discord
USER discord
ENTRYPOINT [ "/usr/bin/discord" ]
