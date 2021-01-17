#!/usr/bin/env bash

cd /data

alias yacc="bison"

make clean
./autogen.sh
./configure --prefix=/depends/x86_64-pc-linux-gnu --without-gui --with-incompatible-bdb
make
make install

rm -rf /root/.navcoin4/regtest

/usr/local/bin/navcoind