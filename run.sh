#!/bin/bash

# make sure there's some file for configs
if [ ! -f /dcrd/dcrd.conf ]; then
    echo "[Application Options]
rpcuser=temp
rpcpass=temp
" > /dcrd/dcrd.conf
fi

if [ ! -f /dcrwallet/dcrwallet.conf ]; then
    echo "[Application Options]
username=temp
password=temp
" > /dcrwallet/dcrwallet.conf
fi

# start ssh daemon
/usr/sbin/sshd

# start dcrd
dcrd &

# start dcrwallet
dcrwallet
