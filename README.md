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


# Run test programs


## For VNC Xserver

Open a browser at

    http://localhost:3000/

## Test programs

In the container:

    xclock &

    glxgears &


You should see the apps running in your OS system (Option 1) or in the browser (Option 2).


