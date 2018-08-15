#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting dash main network
   dashd -datadir=/root/.dash --conf=/root/.dash/dash.conf && tail -f /dev/null
else
   echo Starting dash test network
   dashd -testnet -datadir=/root/.dash --conf=/root/.dash/dash.conf && tail -f /dev/null
fi
