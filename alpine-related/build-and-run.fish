#!/usr/bin/env fish

podman build ping-host-container -t ping
podman run --rm -it ping -c1 google.com