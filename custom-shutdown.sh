#!/bin/bash
LOGFILE="/var/log/custom-exit.log"
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

#Copy the file to /etc/inid.d and set the file as executable.
#sudo chmod +x /etc/init.d/custom-shutdown.sh
#Add a symlink to call the script:
#sudo ln -s /etc/init.d/custom-shutdown.sh /etc/rc0.d/K04custom-shutdown.sh
#After a restart of the system you can check the logfiles:
#cat /var/log/custom-exit.log
#cat /var/log/custom-start.log