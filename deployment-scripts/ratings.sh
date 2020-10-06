#!/bin/bash

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=ratings
export CONTAINER_NAME=ratings
export MANIFEST_FILE_OR_DIR=samples/bookinfo/platform/kube/bookinfo-ratings.yaml
export GIT_URL=https://github.com/istio/istio.git
export GIT_SUBDIR=samples/bookinfo/src/$DEPLOYMENT_NAME/

chmod +x start-pipe-run.sh

/bin/bash start-pipe-run.sh