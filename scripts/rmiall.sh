#!/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi `docker images | awk '{ print $3; }'`
echo ""
echo "------------"
docker images -a
echo ""
