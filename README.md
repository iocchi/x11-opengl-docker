# X11 & OpenGL docker test

This repository contains a minimal configuration of X11 & OpenGL tests
on docker.

TODO: add scripts for NVidia drivers


# Install

Install docker and docker-compose.

Tested with docker `19.03.6` and docker-compose `1.28.2`

# Build the image

    ./build.bash

# Run the container

## Option 1: run on OS X11 server

    ./run.bash


## Option 2: run on VNC Xserver

Download VNC xserver

    docker pull devrt/xserver

Run with VNC xserver

    ./run_xserver.bash

or

    docker-compose up


# Run test programs


## For VNC Xserver

Open a browser at

    http://localhost:3000/

## Test programs

In the container (not needed if started with docker-compose)

    xclock &

    glxgears &


You should see the apps running in your OS system (Option 1) or in the browser (Option 2).

# Close the containers

In the terminal where `run.bash` or `docker-compose up` has launched

    CTRL-c

or (if started with `docker-compose`)

    docker-compose down
