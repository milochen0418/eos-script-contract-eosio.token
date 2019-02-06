# Transfer Tokens 
In the eosio.token.cpp, we have the following code:  

## Transfer  
 void token::transfer( name    from,  
                       name    to,  
                       asset   quantity,  
                       string  memo ) { ... }  
  
New account alice has been issued tokens. it can transfer some of them to ccount bob.  
It was previously indicated that alice authorized this action using the argument -p alice@active  
  
    
$ createAccount.sh alice    
$ createAccount.sh bob  
$ listAccount.sh    
you should see both alice and bob in the list.  
  
To use the following command can issue new token.    
$ cleos push action eosio.token transfer '[ "alice", "bob", "25.0000 SYS", "m" ]' -p alice@active  


## Balance
Check if "bob" got the tokens using `cleos get currency balance`  

$ cleos get currency balance eosio.token bob SYS  

Check "alice's" balance, notice that tokens were deducted from the account    
  
$ cleos get currency balance eosio.token alice SYS  

