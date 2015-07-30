# Latest version of centos
FROM centos:5.11
MAINTAINER Local Admin

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/5/x86_64/epel-release-5-4.noarch.rpm

# Update openssl first, lets see if this works out
RUN yum -y install --enablerepo=epel openssl

# Update Current Image
RUN yum clean all && \
    yum update -y

# Install Salt Dependencies
RUN yum -y install --enablerepo=epel \
  git \
  python26 \
  python26-PyYAML \
  python26-m2crypto \
  python26-crypto \
  python26-msgpack \
  python26-zmq \
  python26-jinja2 \
  python26-requests
