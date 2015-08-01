#License:  https://www.gnu.org/licenses/gpl-2.0.txt
FROM centos:7
MAINTAINER "Berry Sizemore" <ectopunk@multiverse.org>

# Install EPEL and tools - Take note of the kooky URL, burn the building down, and run away with your red stapler to Fiji.
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/7/x86_64/e/epel-release-7-5.noarch.rpm; yum -y update; yum clean all

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