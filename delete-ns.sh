#!/bin/bash

kubectl proxy &

kubectl get ns staging -o json | \
  jq '.spec.finalizers=[]' | \
  curl -X PUT http://localhost:8001/api/v1/namespaces/staging/finalize -H "Content-Type: application/json" --data @-