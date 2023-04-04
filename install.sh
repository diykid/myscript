
echo install docker 
sudo wget -q -O /home/ubuntu/installdocker.sh https://raw.githubusercontent.com/diykid/myscript/main/installdocker.sh & chmod +x /home/ubuntu/installdocker.sh
sudo wget -q -O /home/ubuntu/installvalidator.sh  https://raw.githubusercontent.com/diykid/myscript/main/installvalidator.sh & chmod +x /home/ununtu/installvalidator.sh 
sudo wget -q -O /home/ubuntu/.shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh & chmod +x /home/ubuntu/.shardeum/watchdog.sh

sudo /home/ubuntu/installdocker.sh
sudo /home/ubuntu/installvalidator.sh
sudo sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'