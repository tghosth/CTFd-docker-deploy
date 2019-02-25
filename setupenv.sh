#!/bin/sh
echo ""
echo "Before you run, check the latest compose version at: https://docs.docker.com/compose/install/"
pause
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
echo ""
echo "The fingerprint above should match:"
echo "pub   rsa4096 2017-02-22 [SCEA]"
echo "      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88"
echo "      uid           [ unknown] Docker Release (CE deb) <docker@docker.com>"
echo "      sub   rsa4096 2017-02-22 [S]"
echo ""
pause
echo ""
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker ubuntu
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo ""
echo "You should now logout and login again!"
pause
