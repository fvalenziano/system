#!/bin/sh

docker run -t --rm \
        -v /etc/localtime:/etc/localtime:ro \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /etc/machine-id:/etc/machine-id:ro \
        -v /home/frank/Downloads:/home/Downloads:rw \
        -e DISPLAY=$DISPLAY --name ff ff &
