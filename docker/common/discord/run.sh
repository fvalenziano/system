#!/bin/bash
docker run --rm --name discord \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=$DISPLAY \
        --device /dev/snd \
        -v /etc/localtime:/etc/localtime:ro \
        discord &
