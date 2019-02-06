#!/bin/bash

source $(dirname $0)/setting.sh
#CONTRACT_NAME=eosio.token
#BUILD_DIR=build
COMPILE_COMMANDS=$(echo -e "eosio-cpp -I include -o $CONTRACT_NAME.wasm src/$CONTRACT_NAME.cpp --abigen")
echo "$COMPILE_COMMANDS"
eval $COMPILE_COMMANDS

#eosio-cpp -I include -o eosio.token.wasm src/eosio.token.cpp --abigen
#eosio-cpp -I include -o $CONTRACT_NAME.wasm src/$CONTARCT_NAME.cpp --abigen
echo "Don't forget to do the following"
echo "===================================="
echo "source ~/eos-script/nodeos/use-eos-script.sh"
echo "createAccount.sh eosio.token"
