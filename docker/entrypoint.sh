#!/usr/bin/env bash

cd /data

./autogen.sh
#./configure --prefix=/depends/x86_64-pc-linux-gnu --without-gui
./configure --without-gui
make
make install

rm -rf /root/.navcoin4/regtest

/usr/local/bin/navcoind