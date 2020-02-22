#!/bin/bash

source .env

vendor/bin/container-start.sh

docker exec -ti ${CONTAINER_NAME} composer $@
