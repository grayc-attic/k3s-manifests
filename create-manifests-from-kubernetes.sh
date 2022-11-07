#!/bin/sh
set +x;
set +e;

for file in $(find manifests -name kustomization.yaml);
do
  echo "Process $(dirname $file)"
  kubectl kustomize $(dirname $file) | yq -P | sed "s/\x27\*\x27/\"*\"/g" > $(dirname $file)/manifests.yaml
done;
