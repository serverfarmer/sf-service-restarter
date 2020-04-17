#!/bin/sh

if [ -x /usr/bin/docker ] && [ -s /etc/local/.config/docker.state ]; then
	cat /etc/local/.config/docker.state |xargs docker start
fi
