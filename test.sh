#!/usr/bin/env bash


#nohup parity --chain dev --jsonrpc-port 7545 --jsonrpc-apis all & 

nohup npx ganache-cli --port 7545 &

sleep 5

node_modules/.bin/truffle test