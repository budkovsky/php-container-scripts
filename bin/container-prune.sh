#!/bin/bash

source .env

vendor/bin/container-remove.sh

if [ "$(docker image ls ${CONTAINER_NAME})" ] 
then
	docker rmi ${CONTAINER_NAME} && echo "image ${CONTAINER_NAME} removed"
else
	echo "image ${CONTAINER_NAME} does not exists"
fi

exit 0
