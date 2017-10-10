#!/usr/bin/env bash

echo "API-M Box: provisioning WSO2 API-M Host"


if ! [ $(sudo docker restart wso2am) ]; then

  sudo docker run --detach \
    --hostname wso2am.denisppinheiro.com \
    --publish 8280:8280 --publish 8243:8243 --publish 9763:9763 --publish 9443:9443 \
    --name wso2am \
    --restart always \
    --volume /vagrant/wso2/wso2am/.box/:/mnt/wso2 \
    docker.wso2.com/wso2am
	
else
	
	echo "API-M Box: WSO2 API-M Host already provisioned!"
	
fi