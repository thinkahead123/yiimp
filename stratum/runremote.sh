#!/bin/bash

#sudo ulimit -n 10240
#sudo ulimit -u 10240

while [ -e config/remote.conf ]; do
	gzip -f config/remote.log
        ./stratum config/remote
	sleep 1
done
exec bash

