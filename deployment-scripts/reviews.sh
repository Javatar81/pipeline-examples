#!/bin/bash

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=reviews
export CONTAINER_NAME=review
export MANIFEST_FILE_OR_DIR=https://raw.githubusercontent.com/Javatar81/pipeline-examples/main/reviews.yaml
export GIT_URL=https://github.com/Javatar81/pipeline-examples.git
export GIT_SUBDIR=reviews/
export GIT_REVISION=main

chmod +x start-pipe-run.sh

/bin/bash start-pipe-run.sh