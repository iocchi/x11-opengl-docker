#!/bin/bash

# Use  ./run.bash

IMAGENAME=x11_opengl


echo "Running image $IMAGENAME ..."

docker run -it \
    --name $IMAGENAME --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v $HOME/.Xauthority:/root/.Xauthority:rw \
    -e DISPLAY=$DISPLAY \
    --privileged \
    --net=host \
    $IMAGENAME

