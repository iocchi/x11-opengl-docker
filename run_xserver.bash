#!/bin/bash

IMAGENAME=devrt/xserver
VNCDISPLAY=:1

echo "Running image $IMAGENAME ..."

docker run -it -d \
    --name xserver --rm \
    -e DISPLAY=$VNCDISPLAY \
    --privileged \
    --ipc=host \
    --security-opt seccomp:unconfined \
    -p 3000:80 \
    $IMAGENAME




IMAGENAME=x11_opengl

echo "Running image $IMAGENAME ..."

docker run -it \
    --name $IMAGENAME --rm \
    -e DISPLAY=$VNCDISPLAY \
    --volumes-from xserver \
    $IMAGENAME


