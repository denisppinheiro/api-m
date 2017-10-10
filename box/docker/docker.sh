#!/usr/bin/env bash

echo "API-M Box: provisioning Docker Host"


if ! [ $(sudo docker run hello-world) ]; then

	sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo apt-get update -y
	sudo apt-get install docker-ce -y
	sudo docker run hello-world
	
else
	
	echo "API-M Box: Docker Host already provisioned!"
	
fi