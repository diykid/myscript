if [ ! -d ~/.shardeum ]; then
    mkdir ~/.shardeum
fi
sudo -u ubuntu wget -N -q -O ./installdocker.sh https://raw.githubusercontent.com/diykid/myscript/main/installdocker.sh && chmod +x ./installdocker.sh
sudo -u ubuntu wget -N -q -O ./installvalidator.sh  https://raw.githubusercontent.com/diykid/myscript/main/installvalidator.sh && chmod +x ./installvalidator.sh 
sudo -u ubuntu wget -N -q -O .shardeum/watchdog.sh https://raw.githubusercontent.com/bombermine3/nodes/main/shardeum/watchdog.sh && chmod +x .shardeum/watchdog.sh

sudo -u ubuntu ./installdocker.sh
#./installvalidator.sh
#sudo -u ubuntu sh -c 'echo "*/5 * * * * ubuntu bash /home/ubuntu/.shardeum/watchdog.sh >> /home/ubuntu/.shardeum/watchdog.log" >> /etc/crontab'