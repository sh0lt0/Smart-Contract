pragma solidity ^0.6.0;

contract faucet{            //object CONTRACT is created
  receive() external payable{}      //enables contracts to receive funds from public address 
  
  function withdraw(uint withdraw_amnt) public{
    require(withdraw_amnt <= 100000000000000000);     //precondition for the contract
    msg.sender.transfer(withdraw_amnt);       //transfer the amount to the sender of the message(transaction initiator)
  }
 }
