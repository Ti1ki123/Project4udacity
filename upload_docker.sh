#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=tireallife1023/project-4-udacity
tag=latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath tag: $tag"

docker login

docker tag project-4-udacity $dockerpath:$tag

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$tag