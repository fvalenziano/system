#!/bin/sh

container=kpx
image=kpx

docker run -t --rm --name $container \
        -u 1000 \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /home/frank/Dropbox/private/Security:/aaa:rw \
        -e DISPLAY=$DISPLAY \
        $image &
