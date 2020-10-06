#!/bin/bash

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=details
export CONTAINER_NAME=details
export MANIFEST_FILE_OR_DIR=samples/bookinfo/platform/kube/bookinfo-details.yaml
export GIT_URL=https://github.com/istio/istio.git
export GIT_SUBDIR=samples/bookinfo/src/$DEPLOYMENT_NAME/

chmod +x start-pipe-run.sh

echo $DEPLOYMENT_NAME

/bin/bash start-pipe-run.sh