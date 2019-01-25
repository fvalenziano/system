#!/bin/bash
docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v ~/.mozilla/:/home/firefox/.mozilla:rw \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	firefox
