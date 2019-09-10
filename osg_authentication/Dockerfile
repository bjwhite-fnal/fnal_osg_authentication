

# Dockerfile for keeping CA certificates up to date in a volume so that other containers (like the Apache web server frontend) can mount them
FROM centos:7

RUN yum install -y yum-plugin-priorities cronie

# Install the EPEL repository
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
# Install the OSG repos
RUN yum install -y https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm
# Install the OSG CA certificates
RUN yum install -y osg-ca-certs && yum clean all

# Add the cronjob to periodically update the certificates via yum
ADD ./update_ca_certificates.cron /etc/cron.d/update_ca_certificates.cron
RUN chmod 0644 /etc/cron.d/update_ca_certificates.cron && touch /var/log/osg_ca_cron

ADD ./docker_entrypoint.sh /docker_entrypoint.sh

ENTRYPOINT ["/docker_entrypoint.sh"]
#CMD ["tail", "-f", "/var/log/osg_ca_cron"]
