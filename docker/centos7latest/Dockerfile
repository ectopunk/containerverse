FROM centos:7
MAINTAINER "Berry Sizemore" <ectopunk@multiverse.org>
ENV container docker

# Install EPEL
RUN rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/7/x86_64/e/epel-release-7-5.noarch.rpm

RUN yum -y update; yum clean all; yum install -y net-tools

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

(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]