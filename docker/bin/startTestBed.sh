#License:  https://www.gnu.org/licenses/gpl-2.0.txt
#MAINTAINER "Berry Sizemore" <ectopunk@multiverse.org>
#SOURCE:  https://github.com/ectopunk/containerverse/tree/master/docker
#NOTE:  This script will start up 2 CentOS5.11, 2 CentOS6.6 and 2 Centos7 Docker containers for simple testing across 

#Start a pair of CentOS 5.11 containers
cd ~/repos/containerverse/docker/centos5latest/
docker run -d -i -t centos:5.11 bash
docker inspect "CONTAINER" | grep -i ip
docker run -d -i -t centos:5.11 bash
docker inspect "CONTAINER" | grep -i ip

#Start a pair of CentOS 6.6 containers
cd ~/repos/containerverse/docker/centos6latest/
docker run -d -i -t centos:6.6 bash
docker inspect "CONTAINER" | grep -i ip
docker run -d -i -t centos:6.6 bash
docker inspect "CONTAINER" | grep -i ip

#Start a pair of CentOS 7 containers
cd ~/repos/containerverse/docker/centos7latest/
docker run -d -i -t centos:7 bash
docker inspect "CONTAINER" | grep -i ip
docker run -d -i -t centos:7 bash
docker inspect "CONTAINER" | grep -i ip
