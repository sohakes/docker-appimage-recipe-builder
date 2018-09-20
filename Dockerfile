FROM ubuntu

RUN apt-get update && apt-get install -y desktop-file-utils fuse wget libglib2.0-bin libcairo2 file
RUN wget https://raw.githubusercontent.com/AppImage/AppImages/master/pkg2appimage

ENTRYPOINT ["/bin/bash", "-ex", "./pkg2appimage"]
VOLUME /out
