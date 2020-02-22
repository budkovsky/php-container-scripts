#!/bin/bash

source .env

docker exec ${CONTAINER_NAME} php $@
