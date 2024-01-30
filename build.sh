#!/bin/bash
docker build -t reactjsimagecapstone .
docker tag reactjs $DOCKER_USERNAME/prod
