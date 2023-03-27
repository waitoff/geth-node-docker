#!/usr/bin/env bash

# PoA
if [ ! -f ~/.poa1 ]; then
    echo "PoA running node..."
    geth --datadir=/root/node/bootnode init "/root/files/genesis.json"
    touch ~/.poa1
fi


NODE_NAME=node.${HOSTNAME}

geth \
--datadir=/root/node/bootnode \
--keystore /root/files/keystore \
--networkid=1010101 \
--syncmode=full \
--gcmode=archive \
--nodiscover \
--http \
--http.vhosts "*" \
--http.corsdomain "*" \
--http.addr 0.0.0.0 \
--http.api "eth,net,web3,txpool" \
--port 31513 \
--nat "any" \
--txlookuplimit=0 \
--miner.gasprice 20000000000 \
--ethstats=${NODE_NAME}:12345@netstats:3000 \
--nodekeyhex=091bd6067cb4612df85d9c1ff85cc47f259ced4d4cd99816b14f35650f59c322
