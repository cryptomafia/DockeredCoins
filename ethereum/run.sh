#!/bin/bash
if [[ "$TESTNET" -eq 0 ]] ; then
   echo Starting ethereum main network
   geth --syncmode && sleep 5d
else
   echo Starting ethereum test network
   geth --syncmode --testnet&& sleep 5d
fi
