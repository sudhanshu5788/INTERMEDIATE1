// SPDX-License-Identifier: MIT
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
