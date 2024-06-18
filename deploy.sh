#!/bin/bash

# Docker Credentials
DOCKER_IMAGE="capstoneproject"
DOCKER_TAG="latest"
DOCKER_USERNAME="faheemjailor"
DOCKER_PASSWORD="Faheem@8329"
DOCKER_REPO="${DOCKER_USERNAME} /${DOCKER_IMAGE}:${DOCKER_TAG}"

#Login to Docker hub using variables
echo "DOCKER_PASSWORD" | docker login -u "DOCKER_ISERNAME" --password-stdin


# Check if the Login was Successfull 
if [$? -ne 0 ];then
   echo "Error: Docker Login failed."
   exit 1
fi

# Tag the docker image
docker tag "$DOCKER_IMAGE" "DOCKER_REPO"

# Push the Docker Image
docker path "$DOCKER_REPO"

#Check if the push was successfull
if [$? -eq 0 ]: then
 echo "Docker image '$DOCKER_REPO' Pushed Successfully to Docker Hub"
else
 echo "Error: Failed to push Docker Images"
fi
