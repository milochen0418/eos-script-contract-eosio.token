#!/bin/bash

#eosio-cpp -I include -o eosio.token.wasm src/eosio.token.cpp --abigen
#eosio-cpp -I include -o $CONTRACT_NAME.wasm src/$CONTARCT_NAME.cpp --abigen

source $(dirname $0)/setting.sh
#CONTRACT_NAME=eosio.token
#BUILD_DIR=build
COMPILE_COMMANDS=$(echo -e "eosio-cpp -I include -o $CONTRACT_NAME.wasm src/$CONTRACT_NAME.cpp --abigen")
echo "$COMPILE_COMMANDS"
eval $COMPILE_COMMANDS

rm -rf ./$BUILD_DIR
mkdir -p ./$BUILD_DIR
mv $CONTRACT_NAME.wasm ./$BUILD_DIR/$BUILD_DIR.wasm
mv $CONTRACT_NAME.abi ./$BUILD_DIR/$BUILD_DIR.abi
echo "Have moved built result into ./$BUILD_DIR for deploy.sh to deploy"

echo "Don't forget to do the following before use ./deploy.sh"
echo "===================================="
echo "source ~/eos-script/nodeos/use-eos-script.sh"
echo "createAccount.sh eosio.token"
