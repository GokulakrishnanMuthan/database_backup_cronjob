#!/bin/sh
now="$(date +'%d_%m_%Y_%H_%M_%S')"
filename="fitness_$now.sql".gz
backupfolder="/opt/cron-dbbk/"
fullpathbackupfile="$backupfolder/$filename"
mysqldump --user=root --password=sRsAsatSeVrt@19#sl  --default-character-set=utf8 fitnessapp --databases | gzip > "$fullpathbackupfile"
echo "mysqldump finished at " 
exit 0