#!/bin/bash
cd server
./ts3server_startscript.sh stop
sleep 3
cd ..
cp -R server server_old
wget http://dl.4players.de/ts/releases/3.1.0/teamspeak3-server_linux_amd64-3.1.0.tar.bz2
mv server teamspeak3-server_linux_amd64
tar -jxvf teamspeak3-server_linux*.tar.bz2
mv teamspeak3-server_linux_amd64 server
rm teamspeak3-server_linux_amd64-3.1.0.tar.bz2
cd server
type nul > .ts3server_license_accepted
./ts3server_startscript.sh start
sleep 3
./ts3server_startscript.sh restart
