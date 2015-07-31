#License:  https://www.gnu.org/licenses/gpl-2.0.txt
FROM centos:7
MAINTAINER "Berry Sizemore" <ectopunk@multiverse.org>
ENV container docker

# Install EPEL and tools
# Take note of the wacky new URL for epel.
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/7/x86_64/e/epel-release-7-5.noarch.rpm; yum -y update; yum clean all; yum install -y net-tools; yum -y install --enablerepo=epel \
  git \
  python26 \
  python26-PyYAML \
  python26-m2crypto \
  python26-crypto \
  python26-msgpack \
  python26-zmq \
  python26-jinja2 \
  python26-requests