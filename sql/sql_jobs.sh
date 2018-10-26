#!/bin/bash

case "$1" in
  show)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e 'select * from yiimpfrontend.jobs;'
	;;
  del)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e 'delete from yiimpfrontend.jobs limit 1;'
	;;
  add)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e "insert  into yiimpfrontend.jobs(\`id\`,\`renterid\`,\`ready\`,\`active\`,\`time\`,\`price\`,\`speed\`,\`difficulty\`,\`algo\`,\`host\`,\`port\`,\`username\`,\`password\`,\`percent\`) values (1,0,1,1,$(date +"%s"),1,0,1,'X16R','localhost',13433,'RDhnJfm1vqagt65x2jhKq246VDVt9JyKh4.0','x',1);"
	;;
  *)
	echo "Usage: $0 {show|del|add|help}" >&2
	exit 3
	;;
esac





