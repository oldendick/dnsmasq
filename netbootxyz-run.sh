#!/usr/bin/env bash
# needs sudo to bind to port 69
sudo podman run -d \
  --rm \
  --name=netbootxyz \
  -e MENU_VERSION=2.0.89             `# optional` \
  -e NGINX_PORT=80                   `# optional` \
  -e WEB_APP_PORT=3000               `# optional` \
  -p 3000:3000                       `# sets web configuration interface port, destination should match ${WEB_APP_PORT} variable above.` \
  -p 69:69/udp                       `# sets tftp port` \
  -p 8080:80                         `# optional, destination should match ${NGINX_PORT} variable above.` \
  -v /home/oldendic/netbootxyz/assets:/assets   `# optional` \
  ghcr.io/netbootxyz/netbootxyz

#  -v /home/oldendic/netbootxyz/config:/config   `# optional` \
#  -v /home/oldendic/netbootxyz/assets:/assets   `# optional` \
