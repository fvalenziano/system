#!/bin/bash
# docker pull plexinc/pms-docker

docker run \
-d \
--name plex \
-p 127.0.0.1:32400:32400 \
--network=host \
-e TZ="America/Chicago" \
-e PLEX_CLAIM="claim-UsqzxsTvfab14uz16WWG" \
-v ~/.plex/config:/config \
-v ~/.plex/transcode:/transcode \
-v /data:/data:rw \
plexinc/pms-docker
