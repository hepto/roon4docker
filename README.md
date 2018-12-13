# roon4docker

A simple, and not optimised for space, Docker image to run a Roon server instance.

Use a run command like the following to map a folder of music into it:

```shell
docker run -d \
    --name roon \
    --restart unless-stopped \
    --mount source=roon-data,target=/roon/data \
    -v /path/to/my/music:/music \
    roon
````
    
Then go through the Roon setup and select /music as the music source.

Roon data is stored in a Docker volume called roon-data so that it will persist on restarting the container.
