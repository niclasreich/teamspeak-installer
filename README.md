![Working on: Debian 8](https://img.shields.io/badge/Working%20on-Debian%208-brightgreen.svg) ![Latest Version: v2](https://img.shields.io/badge/Latest%20Version-v2-brightgreen.svg) 

Wanted to visit my TeamSpeak-Server instead?
===
[Click here](http://www.teamspeak.com/invite/naspyy.eu/) or connect to naspyy.eu in TeamSpeak³.

Teamspeak-Installer
===
To use my TeamSpeak-Installer, just copy the following line and paste it into your terminal.

<code>bash <(wget -O- --no-check-certificate 'https://raw.githubusercontent.com/Naspyy/teamspeak-installer/master/installer-v2')</code>

Features
===
* updates all dependencies
* installs needed dependencies (sudo, crontab, dos2unix, nano, zip & unzip)
* installs, downloads, extracts and moves TeamSpeak³-Serversoftware to /opt/teamspeak/
* downloads and installs an Anti-Crash-Script and uses Cronjob to execute it every minute to /opt/teamspeak/anticrash.sh
* downloads and installs a Automated-Backup-Script and uses Cronjob to execute it day to /opt/backup/backup.sh
