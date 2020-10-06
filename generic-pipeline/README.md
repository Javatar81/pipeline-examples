# pipeline-examples

Example for istio bookinfo ratings

tkn pipeline start build-and-deploy \
    -w name=shared-workspace,claimName=source-pvc \
    -p deployment-name=ratings-v1 \
    -p git-url=https://github.com/istio/istio.git \
    -p git-context-dir=samples/bookinfo/src/ratings/ \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/bs-pipelines/ratings \
    -p manifest-dir=samples/bookinfo/platform/kube/bookinfo-ratings.yaml \
    -p container-name=ratings
