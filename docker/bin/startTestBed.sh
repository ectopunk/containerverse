#License:  https://www.gnu.org/licenses/gpl-2.0.txt
#MAINTAINER "Berry Sizemore" <ectopunk@multiverse.org>
#SOURCE:  https://github.com/ectopunk/containerverse/tree/master/docker


cd ../centos5latest
docker build -t centos5latest/basenode5 .
docker run -d -i -t centos:5.11 bash
cd ../centos6latest/basenode6

cd ../docker/centos6latest
docker build -t centos6latest/basenode6 .
docker run -d -i -t centos:6.6 bash
cd ../centos6latest/basenode6

cd ../docker/centos7latest
docker build -t centos7latest/basenode7 .
docker run -d -i -t centos:7 bash
cd ../docker/