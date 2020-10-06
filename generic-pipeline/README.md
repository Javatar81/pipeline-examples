# pipeline-examples

Example for istio bookinfo ratings

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=ratings
export CONTAINER_NAME=ratings
export MANIFEST_FILE_OR_DIR=samples/bookinfo/platform/kube/bookinfo-ratings.yaml
export GIT_URL=https://github.com/istio/istio.git
export GIT_SUBDIR=samples/bookinfo/src/$DEPLOYMENT_NAME/

tkn pipeline start build-and-deploy \
    -w name=shared-workspace,claimName=source-pvc-tekton \
    -p deployment-name="$DEPLOYMENT_NAME"-v1 \
    -p git-url=$GIT_URL \
    -p git-context-dir=$GIT_SUBDIR \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/$NAMESPACE/$DEPLOYMENT_NAME \
    -p manifest-dir=$MANIFEST_FILE_OR_DIR \
    -p container-name=$CONTAINER_NAME


export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=details
export CONTAINER_NAME=details
export MANIFEST_FILE_OR_DIR=samples/bookinfo/platform/kube/bookinfo-details.yaml
export GIT_URL=https://github.com/istio/istio.git
export GIT_SUBDIR=samples/bookinfo/src/$DEPLOYMENT_NAME/

export NAMESPACE=custom-tekton
export DEPLOYMENT_NAME=productpage
export CONTAINER_NAME=productpage
export MANIFEST_FILE_OR_DIR=https://raw.githubusercontent.com/Javatar81/pipeline-examples/main/productpage.yaml
export GIT_URL=https://github.com/istio/istio.git
export GIT_SUBDIR=samples/bookinfo/src/$DEPLOYMENT_NAME/


