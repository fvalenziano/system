#!/bin/sh

docker run -t --rm \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=$DISPLAY --name kpx kpx
