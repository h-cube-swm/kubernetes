#!/bin/bash

kubectl apply -f staging.namespace.yaml

kubectl delete -k auth/overlay/staging --wait
kubectl delete -k images/overlay/staging --wait
kubectl delete -k backend/overlay/staging --wait
kubectl delete -k frontend/overlay/staging --wait

kubectl apply -k auth/overlay/staging
kubectl apply -k images/overlay/staging
kubectl apply -k backend/overlay/staging
kubectl apply -k frontend/overlay/staging