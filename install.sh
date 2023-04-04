
echo install docker 
sudo wget -q -O /home/ubuntu/installdocker.sh https://raw.githubusercontent.com/diykid/myscript/main/installdocker.sh
sudo wget -q -O /home/ubuntu/installvalidator.sh  https://raw.githubusercontent.com/diykid/myscript/main/installvalidator.sh
sudo wget -q -O /home/ubuntu/.shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh


sudo chmod +x installdocker.sh
sudo ./installdocker.sh
echo =================================================================
echo install validator

sudo chmod +x installvalidator.sh 
sudo ./installvalidator.sh
echo install watchdoge

sudo chmod +x /home/ubuntu/.shardeum/watchdog.sh
sudo sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'