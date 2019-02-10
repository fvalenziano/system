FROM ubuntu:18.04
ENV LANG C.UTF-8
# QT specific X11 fix
ENV QT_X11_NO_MITSHM=1
LABEL maintainer "frank@valenziano.us"


RUN apt-get update && apt-get install -y \
    keepassx \
    libcanberra-gtk*

ENTRYPOINT [ "keepassx" ]
