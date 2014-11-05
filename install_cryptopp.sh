#!/bin/bash -e
cd ~
wget http://www.cryptopp.com/cryptopp562.zip
unzip cryptopp562.zip -d cryptopp
cd cryptopp
sed -i -e s/march=native/march=x86-64/g GNUmakefile
make static -j4
make install
cd ~
rm -rf cryptopp*

