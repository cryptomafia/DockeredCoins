#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting dash main network
   dashd --conf=/root/.dash/dash.conf && sleep 5d
else
   echo Starting dash test network
   dashd -testnet --conf=/root/.dash/dash.conf --datadir=/root/.dash && sleep 5d
fi
