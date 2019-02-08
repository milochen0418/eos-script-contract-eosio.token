#!/bin/bash

source $(dirname $0)/setting.sh
# Use build dir and account name here
#BUILD_DIR=build
#ACCOUNT_NAME=eosio.token
if [ $# -eq 2 ]; then
	BUILD_DIR=$1
	ACCOUNT_NAME=$2
fi 
if [ $# -eq 1 ]; then
	ACCOUNT_NAME=$1
fi

DEPLOY_COMMANDS=$(echo -e "cleos set contract $ACCOUNT_NAME $(dirname $0)/$BUILD_DIR -p $ACCOUNT_NAME@active --abi")
echo "Strat to deploy built result in ./$BUILD_DIR to the account $ACCOUNT_NAME"
echo "$DEPLOY_COMMANDS"
eval $DEPLOY_COMMANDS
#cleos set contract $ACCOUNT_NAME $(dirname $0)/$BUILD_DIR -p $ACCOUNT_NAME@active --abi

echo "You can also run ./demo-usage.sh to run real demo for usage.md"
echo "$ createAccount.sh alice"
echo "$ createAccount.sh bob"
echo "$ ./demo-usage.sh"
echo " "

echo "Look more detail about how to interact to eosio.token by read usage.md"
echo "$ cat usage.md"


