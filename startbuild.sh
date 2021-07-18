#!/bin/sh
# by kangris

echo "Start Build Xmrig"

sudo apt update && sudo apt upgrade &&
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y &&
git clone https://github.com/xmrig/xmrig.git &&
mkdir xmrig/build && cd xmrig/build &&
cmake -DWITH_HWLOC=OFF .. &&
make -j$(nproc)
