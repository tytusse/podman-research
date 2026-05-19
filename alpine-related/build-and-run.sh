#!/usr/bin/env bash
set -x

podman build ping-host-container -t ping >&2
podman run --rm -it ping -c1 google.com
