# Latest version of centos
FROM centos:6.6
MAINTAINER Local Admin

# Install EPEL
#RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-5-4.noarch.rpm
RUN wget http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm && \
	rpm -ivh epel-release-6-8.noarch.rpm

# Update openssl first, lets see if this works out
RUN yum -y install --enablerepo=epel openssl

# Update Current Image
RUN yum clean all && \
    yum update -y

# Install ansible dependencies, and useful tools.
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
