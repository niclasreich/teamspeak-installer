#!/bin/bash
#source: https://r4p3.net/threads/teamspeak-3-server-automatic-backup-script.1582/#post-13350
zip -r "Backup from $(date +"%d.%m.%Y at %H:%M:%S").zip" /opt/teamspeak/server/
