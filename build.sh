#!/bin/bash
docker build -t reactjsimagecapstone .
docker tag reactjs $DOCKER_BREACTJS_IMAGE/prod
