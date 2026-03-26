- on the host, start podman container that exposes some TCP port
- in kind, try to reach it
Above sould work as it makes sense and is a common use case for  'kind' continers to access something outside.
Problem is networking and how to route traffic from kind to world.

# tert #1
- oneshot kind container that quaries google main page

# test #2
- use netcat
- have podman container on host expose a service with netcat
- have kind pod try access it (also netcat)


