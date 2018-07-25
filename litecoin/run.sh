#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting litecoin main network
   litecoind --conf=/root/.litecoin/litecoin.conf && sleep 5d
else
   echo Starting litecoin test network
   litecoind --conf=/root/.litecoin/litecoin.conf -testnet && sleep 5d
fi
