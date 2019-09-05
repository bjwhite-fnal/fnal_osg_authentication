#!/bin/bash

if [[ -z $NO_CACHE_DOCKER_BUILD ]]; then
    docker build -t osg_authentication_base osg_authentication_base 
else
    docker build --no-cache -t osg_authentication_base osg_authentication_base 
fi
