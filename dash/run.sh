#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting dash main network
   dashd -datadir=/root/.dash --conf=/root/.dash/dash.conf && sleep 5d
else
   echo Starting dash test network
   dashd -testnet -datadir=/root/.dash --conf=/root/.dash/dash.conf && sleep 5d
fi
