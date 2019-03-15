#!/bin/sh

container=
image=

docker run -t --rm --name $container\
        -v /etc/localtime:/etc/localtime:ro \
        -v /data/three/ENCODING:/ENCODING \
        -v /etc/machine-id:/etc/machine-id:ro \
        $image
