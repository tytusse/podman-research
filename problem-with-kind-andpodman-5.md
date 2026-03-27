- on the host, start podman container that exposes some TCP port
- in kind, try to reach it
Above should work as it makes sense and is a common use case for `kind` containers to access something outside.
Problem is networking and how to route traffic from kind to world.

# tert #1
- oneshot kind container that quaries google main page

# test #2
- use netcat
- have podman container on host expose a service with netcat
- have kind pod try access it (also netcat)

# Ubuntu 24.04.4 with podman 5.x
**The issue is the same** as on Arch (either WSL-Arch or EndeavourOS). I did not check `kind` on Ubuntu because I guess the problem is the same everywhere and I don't want to waste time to set up kind on VM.

Files used to check the problem are [in this folder](./connectivity-issues-podman-5).


