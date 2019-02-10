#!/bin/sh

container=kpxc
image=kpxc

docker run -t --rm --name $container\
        -u 1000 \
        -v /etc/localtime:/etc/localtime:ro \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /etc/machine-id:/etc/machine-id:ro \
        --cpus="4" \
        --memory="4096m" \
        -v /home/frank/Dropbox/private/Security:/aaa:rw \
        -e DISPLAY=$DISPLAY \
        $image &
