#!/bin/bash

# Base Image
docker tag osg_authentication_base bjwhitefnal/osg_authentication_base
docker push bjwhitefnal/osg_authentication_base

# FNAL Top Image
docker tag osg_authentication bjwhitefnal/osg_authentication
docker push bjwhitefnal/osg_authentication
