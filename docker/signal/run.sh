#!/bin/sh

container="signal"
image="signal"

xhost +"local:docker@"

docker run -t --rm --name $container\
        -v /etc/localtime:/etc/localtime:ro \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /etc/machine-id:/etc/machine-id:ro \
        -e DISPLAY=$DISPLAY \
        $image
