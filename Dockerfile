FROM debian:stable-slim 

RUN apt-get update && apt-get --no-install-recommends install -y \
  ca-certificates \
  curl \
  bzip2 \
  ffmpeg \
  cifs-utils \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /roon

RUN curl -L https://download.roonlabs.net/builds/RoonServer_linuxx64.tar.bz2 | tar xvj

ENV ROON_DATAROOT=/roon/data

ENTRYPOINT ["/roon/RoonServer/start.sh"]



