#!/bin/sh
#
# Starts a local fast-synced geth node.

DEFAULT_NETWORK=mainnet

if [ "$NETWORK" = "" ]; then
	NETWORK=$DEFAULT_NETWORK
fi


if [ "$START_GETH" != "" ]; then
	if [ "$NETWORK" != "$DEFAULT_NETWORK" ]; then
		exec geth --cache=2048 --goerli --http --http.addr "0.0.0.0" --http.vhosts=* --http.api "eth,net" --authrpc.addr 0.0.0.0 --authrpc.port 8551 --authrpc.vhosts=* --authrpc.jwtsecret /root/.ethereum/geth/jwtsecret
	else
		exec geth --cache=2048 --http --http.addr "0.0.0.0" --http.vhosts=* --http.api "eth,net" --authrpc.addr 0.0.0.0 --authrpc.port 8551 --authrpc.vhosts=* --authrpc.jwtsecret /root/.ethereum/geth/jwtsecret
	fi
fi
