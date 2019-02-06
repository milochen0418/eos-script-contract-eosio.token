# eosio.token for eos-script  
The original folder data is fork from the eosio.contracts/eosio.token when  
$ git clone https://github.com/EOSIO/eosio.contracts --branch v1.4.0 --single-branch  

# eosio.token
-----------
This eosio contract allows users to create, issue, and manage tokens on
eosio based blockchains.


# HOW TO USE THE PROJECT
Assume you have already know the project    
https://github.com/milochen0418/eos-script    

Open another termianl.   
cd ~/eos-script/installation   
$ ./envReboot.sh  
Then you can see nodeos is running and you can see it running log  



In the original terminal  
$ source ~/eos-script/nodeos/use-eos-script.js    
$ createAccount.sh bob  
$ createAccount.sh alice  
$ createAccount.sh eosio.token  
$ listAccount.sh  
bob  
alice  
eosio.token  
  
  
$ ./build.sh  
  
$ ./deploy.sh  
  
$ ./demo-usage.sh  
Then follow the explanation of demo-usage.sh see how to interact to this eosio.token  
In the final, you can refer the usage.md to interact with the smart contract.  
  

