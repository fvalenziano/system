FROM ubuntu:18.04
LABEL maintainer "frank@valenziano.us"
ENV LANG C.UTF-8


RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y \
    vim-gtk3 \
    --no-install-recommends

ENTRYPOINT [ "gvim" ]
