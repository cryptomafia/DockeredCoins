#!/bin/sh
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
else
   echo Starting ethereum test network
   geth --rinkeby --networkid 4 --rpc --rpcaddr geth --rpcapi 'admin,debug,miner,shh,txpool,personal,eth,net,web3'  --syncmode 'light' console && sleep 5d
fi
