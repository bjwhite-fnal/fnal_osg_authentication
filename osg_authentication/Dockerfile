

# Dockerfile for keeping CA certificates up to date in a volume so that other containers (like the Apache web server frontend) can mount them
FROM bjwhitefnal/osg_authentication_base

RUN yum install -y yum-plugin-priorities

# Install the EPEL repository
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# Install the OSG repos
RUN yum install -y https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm

# Install the IGTF CA certificates
# RUN yum install -y igtf-ca-certs

# Install the CA Scripts Updater
RUN yum install -y osg-ca-scripts
RUN osg-ca-manage setupCA --location root --url osg
RUN osg-ca-manage setupCA --location root --url igtf

# Start the cron CA updater
RUN systemctl enable osg-update-certs-cron

# Install and startup fetch-crl
RUN yum install -y fetch-crl
RUN systemctl enable fetch-crl-boot
RUN systemctl enable fetch-crl-cron
