#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
   geth --syncmode="full" --rpcaddr "0.0.0.0" --rpccorsdomain "geth" --rpc && sleep 5d
else
   echo Starting ethereum test network
   geth --testnet --syncmode="full" --rpcaddr "0.0.0.0" --rpccorsdomain "geth" --rpc && sleep 5d
fi
