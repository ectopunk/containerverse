#License:  https://www.gnu.org/licenses/gpl-2.0.txt
#MAINTAINER "Berry Sizemore" <ectopunk@multiverse.org>

docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
