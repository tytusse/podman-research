# What works
## Podman 5
Two podman containers can talk to each other out of the box (with bridge network which is default). This however requires them to use special DNS name: `host.containers.internal`.

## Podman 4
Two podman containers can talk to each other out of the box (with bridge network which is default) and they can use host IP to reach each other or services on host. This works both for containers running on host **and in kind**.

# What does not work
- using host IP
- using `host.containers.internal` from kind container

# Short summary of the problem
- on the host, start podman container that exposes some TCP port
- in kind, try to reach it - **this will fail**

Above should work as it makes sense and is a common use case for `kind` containers to access something outside.
Problem is networking and how to route traffic from kind to world.

This seems to be an issue with `podman` 5, as for `podman` 4 one can use host IP and it works from contaniers on host or in kind.

# Proposed things to check
## test #1
- oneshot kind container that queries google main page

## test #2
- use netcat
- have podman container on host expose a service with netcat
- have kind pod try access it (also netcat)


# Ubuntu 24.04.4 with podman 5.x
Normally, Ubuntu 24 repositories/channels have podman 4.x.

However, when installing podman 5, **the issue is the same** as on Arch (either WSL-Arch or EndeavourOS). I did not check `kind` on Ubuntu because I guess the problem is the same everywhere and I don't want to waste time to set up kind on VM.

Files used to check the problem are [in this folder](./connectivity-issues-podman-5).


