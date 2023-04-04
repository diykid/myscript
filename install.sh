
echo install docker 
curl -O https://raw.githubusercontent.com/diykid/myscript/main/installdocker.sh && chmod +x installdocker.sh && ./installdocker.sh


echo install validator
curl -O https://raw.githubusercontent.com/diykid/myscript/main/installvalidator.sh && chmod +x installvalidator.sh && ./installvalidator.sh


echo install watchdoge
sudo wget -q -O /home/ubuntu/.shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh
chmod +x /home/ubuntu/.shardeum/watchdog.sh
sudo sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'