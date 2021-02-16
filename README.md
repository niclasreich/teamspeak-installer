![System: Debian 8+](https://img.shields.io/badge/System-Debian%208-brightgreen.svg) ![TeamSpeak-Version: 3.13.3](https://img.shields.io/badge/Teamspeakversion-3.13.3-brightgreen.svg)

Teamspeak-Installer
===
To use my TeamSpeak-Installer, just copy the following line and paste it into your terminal.

<code>bash <(wget -O- --no-check-certificate 'https://raw.githubusercontent.com/niclasreich/teamspeak-installer/master/installer')</code>

Update to 3.13.3
===
To update to 3.13.3, just copy the following line and paste it into your terminal.

<code>bash <(wget -O- --no-check-certificate 'https://raw.githubusercontent.com/niclasreich/teamspeak-installer/master/update-3.13.3')</code>

Features
===
* updates all dependencies
* installs needed dependencies (sudo, crontab, dos2unix, nano, zip & unzip)
* installs, downloads, extracts and moves TeamSpeak³-Serversoftware to /opt/teamspeak/server
* creates a teamspeak user, chowns /opt/teamspeak to the teamspeak user and let the teamspeak user run the TeamSpeak³-Serversoftware
* downloads and installs an Anti-Crash-Script and uses Cronjob to execute it every minute to /opt/teamspeak/anticrash.sh
* downloads and installs a Automated-Backup-Script and uses Cronjob to execute it day to /opt/teamspeak/backup.sh
