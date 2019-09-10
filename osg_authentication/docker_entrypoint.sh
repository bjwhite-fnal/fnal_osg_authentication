#!/bin/bash

echo "Starting the Cron daemon..."
crond
echo "Ensuring that the osg-ca-certs package is fully installed..."
yum reinstall -y osg-ca-certs
tail -f /var/log/osg_ca_cron
