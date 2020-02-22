#!/bin/bash

source .env

if [ "$(docker ps -qa -f name=${CONTAINER_NAME})" ]
then
    echo "container ${CONTAINER_NAME} exists, can't run"
    exit 0
fi

vendor/bin/container-build.sh

#run container 
docker run -t -d \
    -p ${HOST_PORT}:${CONTAINER_PORT} \
    -w /${WORKDIR} \
    -v /$(pwd):/${WORKDIR} \
    -v /$(pwd)/xdebug.ini:/etc/php/7.1/cli/conf.d/20-xdebug.ini \
    --name=${CONTAINER_NAME} ${IMAGE_NAME} \
    && echo "Container ${CONTAINER_NAME} created"
exit 0
