#!/bin/sh
#sudo apt-get remove docker docker-engine docker.io containerd runc
#sudo apt-get update
#sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg-agent \
#    software-properties-common

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#sudo apt-key fingerprint 0EBFCD88
echo "Should match:"
echo "pub   rsa4096 2017-02-22 [SCEA]"
echo "      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88"
echo "      uid           [ unknown] Docker Release (CE deb) <docker@docker.com>"
echo "      sub   rsa4096 2017-02-22 [S]"
