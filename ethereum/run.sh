#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
else
   echo Starting ethereum test network
   geth --rpcapi personal,eth,net,web3 --rpcaddr 0.0.0.0 --rpc --testnet && sleep 5d
fi
