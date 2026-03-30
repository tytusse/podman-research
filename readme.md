Most of the diag is via containers.
Build them and run, adapt scripts / dockerfiles.
[Podman 5: conclusions](./problem-with-kind-and-podman-5.md)
# requirements
Note: currently scripts are in [fish](https://fishshell.com/)

# Podman notes
See https://github.com/containers/podman/blob/main/docs/tutorials/basic_networking.md  for networking.
In general
- podman 5 no longer allows use of local IP (i.e. "my IP") to be used from POD to access any local port
- podman 5 now requires special IP to be used for that; this IP is mapped to `host.containers.internal` in regular podman containers ...
- for podman 5 + kind: `host.containers.internal` is not mapped, one needs to use raw IP.
- **TODO**: figure out how to get this IP; current known method is via running raw podman container and pronting IP.
