# roon4docker

A simple, and not optimised for space, Docker image to run a Roon server instance.

Use a run command like the following to map a folder of music into it:

```shell
docker run -d \
    --name roon \
    --restart unless-stopped \
    --network=host
    --mount source=roon-data,target=/roon/data \
    -v /path/to/my/music:/music \
    roon
````
    
Then go through the Roon setup in your browser as per Roon instructions, and select /music as the music source.

(note: bit of a cheat but this uses host networking to ensure all ports are available and any broadcast traffic works, thus the source IP will be that of the Docker host.)

Roon data is stored in a Docker volume called roon-data so that it will persist on restarting the container.
