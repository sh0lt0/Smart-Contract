pragma solidity ^0.6.0;

contract faucet{
  receive() external payable{}
  
  function withdraw(uint withdraw_amnt) public{
    require(withdraw_amnt <= 100000000000000000);
    msg.sender.transfer(withdraw_amnt);
  }
 }
