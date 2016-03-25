#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build --force-rm=true --tag xxlabaza/java:server-jre $DIR/server_jre
docker build --force-rm=true --tag xxlabaza/java:server-jre-jce $DIR/server_jre_jce