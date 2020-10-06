#!/bin/bash

echo "Now starting PipelineRun for $DEPLOYMENT_NAME"

tkn pipeline start build-and-deploy \
    -w name=shared-workspace,claimName=source-pvc-tekton \
    -p deployment-name="$DEPLOYMENT_NAME"-v1 \
    -p git-url=$GIT_URL \
    -p git-revision=$GIT_REVISION \
    -p git-context-dir=$GIT_SUBDIR \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/$NAMESPACE/$DEPLOYMENT_NAME \
    -p manifest-dir=$MANIFEST_FILE_OR_DIR \
    -p container-name=$CONTAINER_NAME
