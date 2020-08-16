#!/bin/bash

sudo docker pull linuxserver/code-server

sudo docker create \
  --name=code-server \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e PASSWORD=password`#optional` \
  -e SUDO_PASSWORD=password`#optional` \
  -e PROXY_DOMAIN= `#optional` \
  -p 8443:8443 \
  -v /path/to/appdata/config:/config \
  --restart unless-stopped \
  linuxserver/code-server

sudo docker container start code-server