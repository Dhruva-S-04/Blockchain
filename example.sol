// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example{
    uint public minDeposit = 1 ether;

    function deposit() public payable {
        require(msg.value >= minDeposit, "Minimum 1 ETH required");
    }

   uint public balance;
   function addbalance (uint _amount) public{
        balance+=_amount;
        assert(balance >= _amount);
   }

   mapping(address => uint) public balances;
   
   function withdraw(uint amount) public{
       if(amount > balances[msg.sender]){
           revert("Insufficient balance!");
       }
        balances[msg.sender] -= amount;
   }

   

}