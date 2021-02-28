#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting bitcoin main network
   ./bitcoin-0.21.0/bin/bitcoind --conf=/root/.bitcoin/bitcoin.conf && tail -f /dev/null
else
   echo Starting bitcoin test network
   ./bitcoin-0.21.0/bin/bitcoind -testnet -daemon --conf=/root/.bitcoin/bitcoin.conf
   sleep 30
   ./bitcoin-0.21.0/bin/bitcoin-cli -testnet loadwallet testwallet
   tail -f /dev/null
fi
