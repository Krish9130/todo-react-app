#!/bin/bash
set -e

REGION="ap-south-1"
ACCOUNT_ID="615299762705"
CONTAINER_NAME="react-app"
IMAGE_URI="${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/react-app:latest"

aws ecr get-login-password --region ${REGION} | docker login --username AWS --password-stdin ${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com

# Stop old container
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
fi

# Pull latest image
docker pull $IMAGE_URI

# Run container
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_URI
