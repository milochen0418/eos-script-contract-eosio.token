#!/bin/bash

echo "Assume you have call ./envReboot.sh in eos-script. then you have create account of alice, bob and eosio.token. And you have already run ./build.sh and ./deploy.sh"

if [ $# -eq 0 ]; then
	echo "Do this for next step: $ sh -x ./demo-usage.sh 1"
	exit 0
fi

if [ $# -eq 1 ]; then
	if [ $1 -eq 1 ]; then
		echo "Create The Token"
		cleos push action eosio.token create '[ "eosio", "1000000000.0000 SYS"]' -p eosio.token@active 
		echo "Do this for next step : $ run sh -x ./demo-usage.sh 2"
		exit 0
	fi

	if [ $1 -eq 2 ]; then
		echo "Issue Tokens for alice" 
		cleos push action eosio.token issue '["alice", "100.0000 SYS", "Issue token to alice" ]' -p eosio@active 
		echo "Please run ./demo-usage.sh 3"
		exit 0
	fi

	if [ $1 -eq 3 ]; then
		echo "Trasnfer Tokens from alice to bob" 
		cleos push action eosio.token transfer '["alice", "bob", "25.0000 SYS", "Love of Alice" ]' -p alice@active 
		echo "Please run ./demo-usage.sh 4"
		exit 0
	fi

	if [ $1 -eq 4 ]; then
		echo "Check balance of Bob" 
		cleos get currency balance eosio.token bob SYS 
		echo "Check balance of Alice"
		cleos get currency balance eosio.token alice SYS 
		echo "Demo Finish !"
		exit 0
	fi


fi 




