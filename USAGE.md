# After deploy, We can interact to smart contract of eosio.token

By the way, we assume you use eos-script (https://github.com/milochen0418/eos-script)

## Create the Token
In the eosio.token.cpp, we have the following code:  
void token::create( name   issuer,  
                    asset  maximum_supply ) { ... }  
  
To use one of following command can create the token.    
$ cleos push action eosio.token create '[ "eosio", "1000000000.0000 SYS"]' -p eosio.token@active  
  
$ cleos push action eosio.token create '{"issuer":"eosio", "maximum_supply":"1000000000.0000 SYS"}' -p eosio.token@active  

## Issue Tokens 
In the eosio.token.cpp, we have the following code:  
void token::issue( name to,   
                   asset quantity,   
                   string memo ) { ... }  
  
The issuer can issue new tokens to the "alice" account   
  
$ createAccount.sh alice  
$ listAccount.sh  
you should see alice is one of the account in the list.  
   
To use the following command can issue new token.  
$ cleos push action eosio.token issue '[ "alice", "100.0000 SYS", "memo" ]' -p eosio@active

## Transfer Tokens

