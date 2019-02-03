#!/bin/sh

docker run -t --rm \
        -u 1000 \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /home/frank/Dropbox/private/Security:/home:rw \
        -e DISPLAY=$DISPLAY --name kpx kpx
