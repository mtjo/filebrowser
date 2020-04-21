#!/bin/ash
model=$(cat /proc/xiaoqiang/model)
setconfig model $model
port=$(getconfig port)
if [[ -z "$port" ]]; then
	#statements
	port=8088
	setconfig port $port
fi


#/bin/filebrowser > /dev/null 2>&1 
/bin/filebrowser -c /etc/filebrowser.json -p $port /dev/null 2>&1

while :
do
date >> aa.log
sleep 3;
done
