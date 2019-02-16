pragma solidity ^0.4.25;

// Faucet for VALToken

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract Faucet {

    StandardToken public VALToken;
    address public VALOwner;

    //_VALToken is the address of the VALToken contract
    //_VALOwner is the address with transfer permission
    constructor (address _VALToken, address _VALOwner) public {
        VALToken = StandardToken(_VALToken);
        VALOwner = _VALOwner;
    }

	// Give out ether to anyone who asks
	function withdraw(uint withdraw_amount) public {

    	// Limit withdrawal amount to 10 VAL
    	require(withdraw_amount <= 1000);

        VALToken.transferFrom(VALOwner, msg.sender, withdraw_amount);
    	
    }

	// Reject any incoming ether
	function () public payable {
        revert();
    }

}