#!/bin/bash

# Use  ./build.bash [Dockerfile]

IMAGENAME=x11_opengl

DOCKERFILE=Dockerfile
if [ ! "$1" == "" ]; then
  DOCKERFILE=$1
fi


echo "======================================="
echo "   Building $IMAGENAME "
echo "======================================="

docker build --network=host -t $IMAGENAME -f $DOCKERFILE .


