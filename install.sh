if [ ! -d ~/.shardeum ]; then
    mkdir ~/.shardeum
fi
sudo wget -q -O ./installdocker.sh https://raw.githubusercontent.com/diykid/myscript/main/installdocker.sh && sudo chmod +x ./installdocker.sh
sudo wget -q -O ./installvalidator.sh  https://raw.githubusercontent.com/diykid/myscript/main/installvalidator.sh && sudo chmod +x ./installvalidator.sh 
sudo wget -q -O .shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh && sudo chmod +x .shardeum/watchdog.sh

sudo ./installdocker.sh
sudo ./installvalidator.sh
sudo sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'