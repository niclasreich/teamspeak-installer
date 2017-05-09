#!/bin/bash
TEAMSPEAK=`ps ax | grep ts3server_linux_amd64 | grep -v grep | wc -l`
if [ $TEAMSPEAK -eq 1 ]; then
	exit
	else
	cd /opt/teamspeak/server || return
	./ts3server_startscript.sh start || exit
fi
