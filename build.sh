#!/bin/bash
IMAGE_NAME="capstoneproject"
DOCKERFILE_PATH="Dockerfile"
docker build -t "$IMAGE_NAME" -f "DOCKERFILE_PATH" .
if [$? -eq 0 ]; then
  echo "Docker image '$IMAGE_NAME' Build Successfully."
else
 echo "Error: Docker image Build Failed"
fi
