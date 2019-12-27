#!/bin/bash

docker run \
-d \
--name radarr \
-p 127.0.0.1:7878:7878 \
--network=host \
-v ~/.radarr/config:/config:rw \
-v ~/Downloads:/downloads:rw \
-v /data/one/radarr:/data/one/radarr:rw \
-e TZ="America/Chicago" \
-e PUID=1000 \
-e PGID=1000 \
linuxserver/radarr
