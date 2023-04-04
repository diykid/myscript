#!/bin/bash

# Check if docker group exists
if ! grep -q "^docker:" /etc/group; then
  sudo groupadd docker
fi

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

echo y | sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo y | curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo y | sudo apt-get update
echo y | sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo add ubuntu to docker group
sudo usermod -aG docker ubuntu
echo add root to docker group
sudo usermod -aG docker root
echo refresh docker group
newgrp docker
newgrp ubuntu
echo "finished"
