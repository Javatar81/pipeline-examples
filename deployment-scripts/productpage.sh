#!/bin/bash

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=productpage
export CONTAINER_NAME=productpage
export MANIFEST_FILE_OR_DIR=https://raw.githubusercontent.com/Javatar81/pipeline-examples/main/productpage.yaml
export GIT_URL=https://github.com/Javatar81/pipeline-examples.git
export GIT_SUBDIR=reviews/

chmod +x start-pipe-run.sh

/bin/bash start-pipe-run.sh