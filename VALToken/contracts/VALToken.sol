pragma solidity ^0.4.25;

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract VALToken is StandardToken {
    string public constant name = 'VAL Token';
    string public constant symbol = 'VAL';
    uint8 public constant decimals = 2;
    uint constant _initial_supply = 2100000000;

    constructor() public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
}