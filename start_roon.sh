#!/bin/bash

docker run -d \
    --name roon \
    --restart unless-stopped \
    --network host \
    --mount source=roon-data,target=/roon/data \
    -v /path/to/my/music:/music \
    roon
