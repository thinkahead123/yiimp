#!/bin/bash

case "$1" in
  jobs)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e 'select * from yiimpfrontend.jobs;'
	;;
  del)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e 'delete from yiimpfrontend.jobs limit 1;'
	;;
  add)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e "insert  into yiimpfrontend.jobs(\`id\`,\`renterid\`,\`ready\`,\`active\`,\`time\`,\`price\`,\`speed\`,\`difficulty\`,\`algo\`,\`host\`,\`port\`,\`username\`,\`password\`,\`percent\`) values (1,0,1,1,$(date +"%s"),1,0,1,'X16R','localhost',13468,'RDhnJfm1vqagt65x2jhKq246VDVt9JyKh4.0','x',1);"
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e "insert  into yiimpfrontend.jobs(\`id\`,\`renterid\`,\`ready\`,\`active\`,\`time\`,\`price\`,\`speed\`,\`difficulty\`,\`algo\`,\`host\`,\`port\`,\`username\`,\`password\`,\`percent\`) values (2,0,1,1,$(date +"%s"),1,0,1,'SCRYPT','localhost',13458,'36B9Vbcy2yGyHuGLu5vxdx9A8HEkNUVycp.0','c=BTC',1);"
	;;
  balances)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e 'select * from yiimpfrontend.balances;'
	;;
  showtables)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e 'show tables from yiimpfrontend;'
	;;
  show)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e "select * from yiimpfrontend.${2};"
	;;
  special)
	mysql -h localhost -u panel --password=M3ykrckgyloXfMUzYxxWQoJ5njUvVlbS -e "insert  into yiimpfrontend.markets(\`id\`,\`coinid\`,\`name\`) values (3600,1913,'cryptopia');"
	;;
  *)
	echo "Usage: $0 {show|jobs|showtables|special|del|add|balances|help}" >&2
	exit 3
	;;
esac





