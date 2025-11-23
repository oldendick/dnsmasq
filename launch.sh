#!/usr/bin/env bash
#
# make sure the nixos/host firewall allows dhcp traffic
# sudo tcpdump port 67 # to help troubleshoot
#
# also, temporarily disable any other dhcp servers on the
# network... like on your home router.


sudo podman run -it --rm --name dnsmasq -v ./alt.conf:/etc/dnsmasq.conf --cap-add=NET_ADMIN --cap-add=NET_RAW \
  --network host \
  docker.io/dockurr/dnsmasq --log-queries

