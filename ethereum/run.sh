#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
   geth --syncmode --rpcaddr "0.0.0.0" --rpccorsdomain "geth" --rpcport "8545" && sleep 5d
else
   echo Starting ethereum test network
   geth --syncmode --testnet  --rpcaddr "0.0.0.0" --rpccorsdomain "geth" --rpcport "8545" && sleep 5d
fi
