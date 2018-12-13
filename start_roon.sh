#!/bin/bash

docker run -d \
    --name roon \
    --restart unless-stopped \
    --network macvlan \
    --ip 192.168.0.7 \
    --mount source=roon-data,target=/roon/data \
    -v /media/BigBeat/Music:/music \
    roon
