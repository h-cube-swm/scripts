#!/bin/bash

kubectl delete secret -n production ap-northeast-2-ecr-registry --wait
kubectl create secret generic -n production ap-northeast-2-ecr-registry \
    --from-file=.dockerconfigjson=$HOME/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson

kubectl rollout restart -n production deployment auth