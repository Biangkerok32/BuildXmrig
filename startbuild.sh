#!/bin/sh
# by kangris

echo "Start Build Xmrig"

apt update && apt upgrade &&
apt install -y git wget proot build-essential cmake libmicrohttpd &&
git clone https://github.com/xmrig/xmrig --depth 1 &&
mkdir xmrig/build &&
cd xmrig/build &&
cmake -DWITH_HWLOC=OFF .. &&
make -j10
