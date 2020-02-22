#!/bin/bash

source .env

if [ ! "$(docker image ls ${CONTAINER_NAME} | grep ${CONTAINER_NAME})" ]
then
	docker build \
        -t ${IMAGE_NAME} \
        --build-arg USER_NAME=${USER_NAME} \
        --build-arg USER_ID=${USER_ID} \
        --build-arg USER_GROUP_ID=${USER_GROUP_ID} \
        --build-arg WORKDIR=${WORKDIR} \
        $(pwd)/${DOCKERFILE_PATH}
fi

exit 0
