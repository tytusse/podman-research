#!/usr/bin/env bash

podman build simple_server -t simple_server
podman build simple_client -t simple_client

podman image ls | grep simple_
