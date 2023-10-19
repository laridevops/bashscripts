#!/bin/bash

# Check if Docker is already installed
if which docker &>/dev/null; then
    echo "Docker is already installed."
    exit 0
fi

# Update the system
sudo yum update -y

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable the Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the 'docker' group to run Docker without sudo
sudo usermod -aG docker $(whoami)

# Reload the user group
newgrp docker

# Test Docker installation
docker --version

echo "Docker has been successfully installed."

# Note: Reboot the system if you encounter any issues related to Docker daemon.

