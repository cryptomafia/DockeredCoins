#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
else
   echo Starting ethereum test network
   geth --rinkeby --networkid 4 --rpc --rpcaddr 0.0.0.0 --rpcapi 'admin,debug,shh,txpool,personal,eth,net,web3' --syncmode 'full' && sleep 5d
fi
