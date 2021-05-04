// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./ERC20.sol";

contract QiAdToken is ERC20 {
	uint256 private _initialSupply=1000000000*10**18;

    constructor() public ERC20("QIAD", "QIAD"){
        _mint(msg.sender, _initialSupply);
    }
}


