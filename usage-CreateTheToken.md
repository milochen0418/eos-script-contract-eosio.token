# Create the Token
In the eosio.token.cpp, we have the following code:  
void token::create( name   issuer,  
                    asset  maximum_supply ) { ... }  
  
To use one of following command can create the token.    
$ cleos push action eosio.token create '[ "eosio", "1000000000.0000 SYS"]' -p eosio.token@active  
  
$ cleos push action eosio.token create '{"issuer":"eosio", "maximum_supply":"1000000000.0000 SYS"}' -p eosio.token@active  


