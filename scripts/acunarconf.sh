#!/bin/bash -ev

mkdir -p ~/.acunar
echo "rpcuser=username" >>~/.acunar/acunar.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.acunar/acunar.conf

