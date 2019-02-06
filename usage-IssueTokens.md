# Issue Tokens 
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


