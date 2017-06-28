#!/bin/bash

# Remove mycontainer1 and mycontainer2 before creating
docker run \
    -dti \
    --restart=always \
    --name=mongodb \
    --publish=27017:27017 \
    --volume=$(pwd)/database:/data/db \
    --volume=$(pwd)/shares:/shares \
    mongo:3.4.5
