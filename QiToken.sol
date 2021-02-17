// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract QiToken is ERC20 {
	uint256 private _initialSupply=1000000000*10**18;

    constructor() public ERC20("Qi", "QI"){
        _mint(msg.sender, _initialSupply);
    }
}


