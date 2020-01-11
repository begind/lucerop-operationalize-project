#!/usr/bin/env bash


# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="psldocker88/lucerop-app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run lucerop-deploy-app --generator=run-pod/v1 --image=docker.io/$dockerpath:latest 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward lucerop-deploy-app 8000:80
