#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting litecoin main network
   litecoind --conf=/root/.litecoin/litecoin.conf && tail -f /dev/null
else
   echo Starting litecoin test network
   litecoind --conf=/root/.litecoin/litecoin.conf -testnet && tail -f /dev/null
fi
