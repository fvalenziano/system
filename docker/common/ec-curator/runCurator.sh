#!/bin/bash

docker run -it --rm \
	--name=ec-curator \
	--network=host \
	-v ~/devops/docker/ec-curator/settings:/home/curator/ \
	curator
