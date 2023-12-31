#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
docker_path=tireallife1023
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project-4-udacity --image="$docker_path/project-4-udacity" --port=80 --labels app=project-4-udacity

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward project-4-udacity 8081:80
