#!/bin/bash
if [[ "TESTNET" -eq 0 ]] ; then
   echo Starting dash main network
   dashd && sleep 5d
else
   echo Starting dash test network
   dashd -testnet && sleep 5dr
fi
