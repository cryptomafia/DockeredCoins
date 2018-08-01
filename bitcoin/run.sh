#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting bitcoin main network
   bitcoind --conf=/root/.bitcoin/bitcoin.conf && sleep 5d
else
   echo Starting bitcoin test network
   bitcoind -testnet --conf=/root/.bitcoin/bitcoin.conf && sleep 5d
fi
