#!/bin/sh

docker run -t --rm \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /home/frank/Dropbox/private/Security:/home/keepass:rw \
        -e DISPLAY=$DISPLAY --name kpx kpx
