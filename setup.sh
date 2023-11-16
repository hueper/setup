#!/bin/bash

set -e

# Update and upgrade system packages
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# Install essential packages
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    git \
    tree \
    atop \
    python3-pip \
    nodejs \
    npm \
    unzip

# Add Docker GPG key and repository
sudo DEBIAN_FRONTEND=noninteractive install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo DEBIAN_FRONTEND=noninteractive chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package list after adding Docker repository
sudo apt-get update

# Install Docker
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Yarn
sudo npm install -g yarn

# Use n module from npm to upgrade Node.js
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

# Additional cleanup
sudo apt-get autoremove -y
sudo apt-get clean

echo "Installation completed successfully."
