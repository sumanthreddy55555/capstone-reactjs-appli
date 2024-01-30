#!/bin/bash
docker build -t reactjsimagecapstone .
docker tag reactjsimagecapstone $DOCKER_USERNAME/prod
