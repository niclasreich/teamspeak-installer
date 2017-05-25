#!/bin/bash
cd /opt/teamspeak/server || exit
wget https://github.com/Naspyy/teamspeak-installer/edit/master/query_ip_whitelist.txt
./ts3server_startscript.sh start
sleep 10
# create, download, rename and set up anticrash-file
cd /opt/teamspeak/ || exit
wget https://raw.githubusercontent.com/Naspyy/teamspeak-installer/master/anticrash.sh
chmod +x anticrash.sh
dos2unix /opt/teamspeak/anticrash.sh
echo > anticrash.txt
chmod 777 anticrash.txt
crontab -l | { cat; echo "* * * * * cd /opt/teamspeak/ && ./anticrash.sh > /opt/teamspeak/anticrash.txt"; } | crontab -
# create, download, rename and set up backup-file
cd /opt/teamspeak/ || exit
wget https://raw.githubusercontent.com/Naspyy/teamspeak-installer/master/backup.sh
chmod +x backup.sh
dos2unix /opt/teamspeak/backup.sh
cd /opt/teamspeak/ || exit
echo > backup.txt
chmod 777 backup.txt
crontab -l | { cat; echo "0 0 * * * cd /opt/teamspeak/ && ./backup.sh > /opt/teamspeak/backup.txt"; } | crontab -
cd /opt/teamspeak/ || exit
echo > backup-remover.txt
chmod 777 backup-remover.txt
crontab -l | { cat; echo "* * * * * find /opt/teamspeak/ -name \*.zip -a -mtime +14 -exec rm {} \; > /opt/teamspeak/backup-remover.txt"; } | crontab -
# display if teamspeak is running
/opt/teamspeak/server/ts3server_startscript.sh status
