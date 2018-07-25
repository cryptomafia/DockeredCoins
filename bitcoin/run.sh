#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting bitcoin main network
   bitcoind && sleep 5d
else
   echo Starting bitcoin test network
   bitcoind -testnet && sleep 5dr
fi
