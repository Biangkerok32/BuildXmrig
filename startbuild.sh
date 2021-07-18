#!/bin/sh
# by kangris

echo "Start Build Xmrig"

sudo apt update && sudo apt upgrade &&
sudo apt install -y git wget proot build-essential cmake libmicrohttpd &&
git clone https://github.com/xmrig/xmrig --depth 1 &&
mkdir xmrig/build &&
cd xmrig/build &&
cmake -DWITH_HWLOC=OFF .. &&
make -j10
