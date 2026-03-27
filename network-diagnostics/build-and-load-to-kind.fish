#!/usr/bin/env fish

set appName diagnostic-arch # same as dir name
set tarPath /tmp/$appName.podman.tar

podman build $appName -t $appName
rm -f $tarPath
podman save -o $tarPath $appName
kind load image-archive --name kind $tarPath
rm -f $tarPath

podman exec -it kind-control-plane crictl images