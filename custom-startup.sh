#!/bin/bash
LOGFILE="/var/log/custom-start.log"
TIMESTAMP=$(date +"%F %H:%M:%S")
rm $LOGFILE
exec 2>> $LOGFILE
echo $TIMESTAMP >> $LOGFILE
echo -e '\nnext command: ls /' >> $LOGFILE
ls / >> $LOGFILE
echo -e '\nnext command: ls /home' >> $LOGFILE
ls /home >> $LOGFILE
echo -e "\nnext command: ls /home/$USER/Desktop" >> $LOGFILE
ls /home/$USER/Desktop >> $LOGFILE
#Copy this file to /etc/init.d and set the file as executable
#sudo chmod +x /etc/inid.d/custom-start.sh
#Add this line to /etc/rc.local before "exit 0"
#/etc/inid.d/custom-startup.sh
