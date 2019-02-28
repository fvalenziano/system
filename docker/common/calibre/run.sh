#!/bin/sh

container=clb
image=clb

docker run -t --rm --name $container\
        -v /etc/localtime:/etc/localtime:ro \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /etc/machine-id:/etc/machine-id:ro \
        -v /home/frank/Downloads:/downloads:rw \
        -e DISPLAY=$DISPLAY \
        $image
