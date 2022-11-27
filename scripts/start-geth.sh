#!/bin/sh
#
# Starts a local fast-synced geth node.

DEFAULT_NETWORK=mainnet

if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi


if [ "$START_GETH" != "" ]; then
	if [ "$NETWORK" != "$DEFAULT_NETWORK" ]; then
		exec geth --goerli --http --http.addr "0.0.0.0" --http.vhosts=* --http.api "eth,net" --authrpc.jwtsecret /root/.ethereum/geth/jwtsecret
	else
		exec geth --http --http.addr "0.0.0.0" --http.vhosts=* --http.api "eth,net" --authrpc.jwtsecret /root/.ethereum/geth/jwtsecret
	fi
fi
