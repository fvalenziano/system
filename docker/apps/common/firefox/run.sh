#!/bin/sh

docker run -t --rm \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -v /etc/machine-id:/etc/machine-id:ro \
        -e DISPLAY=$DISPLAY --name ff ff
