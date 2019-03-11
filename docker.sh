#!/bin/bash
#docker rm $(docker ps -a --filter "status=exited")
#docker rm -f $(docker ps -a| awk '/Exited/{print $1}')
docker container prune -f --filter "until=24h"
#docker ps -a | awk '/Exited/{print $1}' >> temp.txt
#for i in `cat temp.txt`; do docker rm $i; done
