# INTERMEDIATE PROJECT 

This Solidity program is an example of using revert, assert and require implementation. In this program we have used theses for different fuctionality
and this shows the use and working of these keywords or error handling methods.

## Description

This program is a simple contract written in Solidity, and in this program we have created different functions that can actually mint and also burn but at the same time we used revert assert and require in this and provided different conditions to that so that we can learn it implementing with actual programs and practically it is more helpful for us.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
pragma solidity 0.8.18;
contract MyToken {

  string public tokname = "SUDHANSHU";
  uint public tsupply = 0;

  mapping(address => uint) public balances;
       
  function mint (address add, uint val) public {
      if(val<500){
          revert("VALUE SHOULD BE GREATER THAN 500");
      }
      assert(val>700);  
      tsupply += val;
      balances[add] += val;
    }

  function burn (address add, uint val) public {
     require(balances[add]>= val, "INSUFFICIENT FUNDS TO BURN");
    { 
      tsupply -= val;
      balances[add] -= val;
     }    
    }
}

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Now you can perform different operations and this will show error and display the given message and show the user why this error is happening.



## Authors

Sudhanshu Shekhar
[@sudhanshu5788]

