#!/bin/bash -e
yum -y install bzip2-devel ; yum -y clean all
cd ~
wget http://sourceforge.net/projects/boost/files/boost/1.56.0/boost_1_56_0.tar.gz
tar xzf boost_1_56_0.tar.gz
cd boost_1_56_0
./bootstrap.sh
./b2 --prefix=/usr/local/boost156 --without-python install
./b2 boost.locale.icu=off --with-locale --prefix=/usr/local/boost156 install
cd ~
rm -rf boost_1_56_0*

