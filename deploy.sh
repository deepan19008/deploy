#!/bin/bash

# Set the image name
IMAGE_NAME="my-react-app"


# Deploy the Docker image using Docker Compose
echo "Deploying the Docker image..."
 docker compose up -d

# Check if the deployment was successful
if [ $? -eq 0 ]; then
  echo "Docker image deployed successfully."
else
  echo "Failed to deploy the Docker image."
  exit 1
fi
