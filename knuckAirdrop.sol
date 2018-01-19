pragma solidity ^0.4.19;
contract ERC20 {
  function transfer(address _recipient, uint256 _value) public returns (bool success);
}

contract Airdrop {
    address public beneficiary;
    function Airdrop(address dropOwner) public {
        beneficiary = dropOwner;
    }
  function drop(ERC20 token, address[] recipients, uint256[] values) public {
      if (beneficiary == msg.sender) {
    for (uint256 i = 0; i < recipients.length; i++) {
      token.transfer(recipients[i], values[i]);
    }
      }
      else {
          
      }
      }
  }
