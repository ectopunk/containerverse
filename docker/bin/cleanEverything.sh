## Remove all images and containers (useful for “out of disk space” errors)
$ docker rmi $(docker images -q)
$ docker rm -f $(docker ps -aq)
## Gracefully shutdown your VM
$ boot2docker stop
## Remove VM and its disk image
$ boot2docker delete
