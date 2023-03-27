#!/usr/bin/env bash

# PoA
if [ ! -f ~/.poa1 ]; then
    echo "PoA running node..."
    geth --datadir=/root/node/node-data init "/root/genesis.json"
    touch ~/.poa1
fi
## json-key оne-time migration
#if [ -f ~/.fork2 ]; then
#    echo "fork2 found, attempt key migration..."
#    if [ ! -f ~/.migrated ]; then
#      echo "Migrating json keys..."
#      cp /root/node/joys/keystore/* /root/node/node-data/keystore/
#    touch ~/.migrated
#    fi
#fi

sleep 3
cp /root/static-nodes.json /root/node/node-data/geth

NODE_NAME=dockerp.${HOSTNAME}

geth \
--datadir=/root/node/node-data \
--networkid=35855456 \
--http \
--http.vhosts "*" \
--http.corsdomain "*" \
--http.addr 0.0.0.0 \
--http.api "eth,net,web3,txpool" \
--port 31323 \
--nat "any" \
--txlookuplimit=0 \
--miner.gasprice 20000000000 \
--ethstats=${NODE_NAME}:12345@netstats:3000
