FROM jimmycuadra/rust:1.13.0
MAINTAINER Mak Krnic <mkrnic@gmail.com>

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    xserver-xorg-core xterm && \
  DEBIAN_FRONTEND=noninteractive apt-get autoremove -y && \
  rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*

WORKDIR /source
CMD ["/bin/bash"]
