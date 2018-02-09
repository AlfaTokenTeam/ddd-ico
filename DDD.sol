pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract DDD is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function DDD(address _owner)  UpgradeableToken(_owner) {
    name = "DDD";
    symbol = "DDD";
    totalSupply = 12500000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}