#!/bin/bash

cd ~
# Install dependencies
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    python3 \
    python3-pip \
    git

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Update again to refresh packages
sudo apt-get update

# Install docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# Starting docker
sudo service docker start
git clone --recurse-submodules https://github.com/cobbr/Covenant
cd Covenant/Covenant
sudo docker build -t covenant .
sudo docker run -d -it -p 7443:7443 -p 80:80 -p 443:443 --name covenant -v ~/Covenant/Covenant/Data:/app/Data covenant
