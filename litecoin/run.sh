#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting litecoin main network
   ./litecoin-0.18.1/bin/litecoind --conf=/root/.litecoin/litecoin.conf && tail -f /dev/null
else
   echo Starting litecoin test network
   ./litecoin-0.18.1/bin/litecoind -testnet -daemon --conf=/root/.litecoin/litecoin.conf
   sleep 30
   ./litecoin-0.18.1/bin/litecoin-cli -testnet loadwallet testwallet
   tail -f /dev/null
fi
