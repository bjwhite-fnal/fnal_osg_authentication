#!/bin/bash

echo "Starting the Cron daemon..."
crond
echo "Ensuring that the osg-ca-certs package is fully installed..."
yum -y update && yum -y upgrade
yum reinstall -y osg-ca-certs
echo "Creating flag to inform other containers that the certificates are safe to mount."
touch /etc/grid-security/certificates/jobs_done
echo "Created /etc/grid-security/certificates/jobs_done..."
tail -f /var/log/osg_ca_cron
