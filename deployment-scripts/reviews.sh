#!/bin/bash

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=reviews
export CONTAINER_NAME=review
export MANIFEST_FILE_OR_DIR=https://raw.githubusercontent.com/Javatar81/pipeline-examples/main/reviews.yaml
export GIT_URL=https://raw.githubusercontent.com/Javatar81/pipeline-examples.git
export GIT_SUBDIR=samples/bookinfo/src/$DEPLOYMENT_NAME/

chmod +x start-pipe-run.sh

/bin/bash start-pipe-run.sh