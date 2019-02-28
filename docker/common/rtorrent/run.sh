#!/bin/sh

container=rtorrent
image=rtorrent

docker run -t --rm --name $container\
        -v /etc/localtime:/etc/localtime:ro \
        -v /etc/machine-id:/etc/machine-id:ro \
        -v /home/frank/.plexMedia:/home/rtorrent/plexMedia:ro \
        $image
