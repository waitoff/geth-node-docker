#!/usr/bin/env bash

NODE_NAME=node.${HOSTNAME}

# PoA
if [ ! -f ~/.poa1 ]; then
    echo "PoA running node..."
    geth --datadir=/root/node/${HOSTNAME} init "/root/files/genesis.json"
    touch ~/.poa1
fi


geth \
--datadir=/root/node/${HOSTNAME} \
--keystore /root/files/keystore \
--password /root/files/passwords/passwords.txt \
--unlock "0xed9d02e382b34818e88b88a309c7fe71e65f419d" \
--rpc.allow-unprotected-txs \
--allow-insecure-unlock \
--networkid=1010101 \
--http \
--http.vhosts "*" \
--http.corsdomain "*" \
--http.addr 0.0.0.0 \
--http.api "eth,net,web3,txpool" \
--bootnodes="\
enode://288b97262895b1c7ec61cf314c2e2004407d0a5dc77566877aad1f2a36659c8b698f4b56fd06c4a0c0bf007b4cfb3e7122d907da3b005fa90e724441902eb19e@bootnode:31513" \
--port 31513 \
--nat "any" \
--txlookuplimit=0 \
--miner.gasprice 20000000000 \
--ethstats=${NODE_NAME}:12345@netstats:3000 \
--miner.etherbase="0xed9d02e382b34818e88b88a309c7fe71e65f419d" \
--mine
