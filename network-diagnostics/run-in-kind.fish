#!/usr/bin/env fish

if test "$(kubectl config current-context)" != kind-kind
    echo "Current kubectl context is not 'kind-kind', aborting"
    exit 1
end

argparse 'no-remove' -- $argv
or return

set appName diagnostic-arch # same as dir name

echo "Running pod $appName in kind"

kubectl delete pod $appName --ignore-not-found # in case previous run failed
# --image-pull-policy=Never is cruicial when using "run" with local images
# otherwise it will try to pull the image and will fail with "not found".
if set -q _flag_no_remove
    echo "No-remove flag is set, the pod will not be removed after it finishes"
    kubectl run $appName --image=localhost/$appName --restart=Never -it --image-pull-policy=Never -- $argv
else
    kubectl run $appName --image=localhost/$appName --restart=Never -it --image-pull-policy=Never --rm -- $argv
end