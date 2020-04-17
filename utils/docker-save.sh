#!/bin/sh

if [ -x /usr/bin/docker ]; then
	/usr/bin/docker ps |cut -d' ' -f1 |grep -v ^CONTAINER |tac >/etc/local/.config/docker.state
fi
