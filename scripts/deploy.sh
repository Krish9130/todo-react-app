#!/bin/bash
set -e

CONTAINER_NAME="react-app"
IMAGE_URI="615299762705.dkr.ecr.ap-south-1.amazonaws.com/react-app:latest"

# Stop old container
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
fi

# Pull latest image
docker pull $IMAGE_URI

# Run container
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_URI
