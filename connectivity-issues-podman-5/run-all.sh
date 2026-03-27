#!/usr/bin/env bash

podman run --rm --name=simple_server -it -p 1234:1234 simple_server &
# IP="192.168.150.221"
IP="host.containers.internal"
podman run --rm --name=simple_client -it -e "TEST_SERVER_IP=$IP" simple_client &
