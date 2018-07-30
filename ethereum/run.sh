#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
else
   echo Starting ethereum test network
   geth --rinkeby --networkid 4 --rpc --rpcaddr 127.0.0.1 --rpcapi 'admin,debug,miner,shh,txpool,personal,eth,net,web3'  --syncmode 'light' console
fi
