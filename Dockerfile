FROM debian:stable-slim 

RUN apt-get update && apt-get --no-install-recommends install -y \
  curl \
  bzip2 \
  ffmpeg \
  cifs-utils \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /roon

RUN curl http://download.roonlabs.com/builds/RoonServer_linuxx64.tar.bz2 | tar xvj

ENV ROON_DATAROOT=/roon/data

ENTRYPOINT ["/roon/RoonServer/start.sh"]



