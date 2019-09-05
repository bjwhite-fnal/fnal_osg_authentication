#!/bin/bash

if [[ -z $NO_CACHE_DOCKER_BUILD ]]; then
    docker build -t osg_authentication osg_authentication 
else
    docker build --no-cache -t osg_authentication osg_authentication
fi
