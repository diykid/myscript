cd /home/ubuntu
wget -N -q -O ./installdocker.sh https://raw.githubusercontent.com/diykid/myscript/main/installdocker.sh && sudo chmod +x ./installdocker.sh && ./installdocker.sh

exit

wget -N -q -O ./installvalidator.sh  https://raw.githubusercontent.com/diykid/myscript/main/installvalidator.sh && sudo chmod +x ./installvalidator.sh && ./installvalidator.sh


#sudo  wget -N -q -O .shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh && chmod +x .shardeum/watchdog.sh
#sudo sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'
exit

wget -q -O /home/ubuntu/.shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh && sudo chmod +x /home/ubuntu/.shardeum/watchdog.sh && sudo sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'