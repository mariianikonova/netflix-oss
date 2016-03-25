#!/bin/bash


# Remove previous docker containers and images griddynamics
docker stop `docker ps -a | grep 'griddynamics' | tr -s ' ' | cut -d ' ' -f 1`
docker rm -f `docker ps -a | grep 'griddynamics' | tr -s ' ' | cut -d ' ' -f 1`
docker rmi -f `docker images | grep 'griddynamics\|xxlabaza' | tr -s ' ' | cut -d ' ' -f 3`


# Build new images from scratch

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/docker/build.sh && mvn --file $DIR/sources/pom.xml clean package deploy
