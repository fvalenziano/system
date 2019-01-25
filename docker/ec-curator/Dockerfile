FROM ubuntu:18.04
LABEL MAINTAINER="frank@valenziano.us"
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
	python3 \
	python3-pip \
	vim

RUN pip3 install -U pip
RUN pip3 install \
	elasticsearch-curator

RUN useradd -ms /bin/bash curator
USER curator
WORKDIR /home/curator	
