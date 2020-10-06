#!/bin/bash

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=productpage
export CONTAINER_NAME=productpage
export MANIFEST_FILE_OR_DIR=productpage.yaml
export GIT_URL=https://github.com/Javatar81/pipeline-examples.git
export GIT_SUBDIR=$DEPLOYMENT_NAME/
export GIT_REVISION=main

chmod +x start-pipe-run.sh

/bin/bash start-pipe-run.sh