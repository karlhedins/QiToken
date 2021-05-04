// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/GSN/Context.sol";


contract Airdrop is Context, Ownable {
    // Events
    event DropEvent(address token, uint256 quantity);
    event WithdrawEvent(address to, address token, uint256 amount);

    /**
     * @dev Tokens airdrop function
     * @param _recipients array of recipients
     * @param _amount array of amounts
     * @param _recipients airdrop token
     */
    function dropTokens(address[] memory _recipients, uint256[] memory _amount, IERC20 _token) public onlyOwner {
        require(_recipients.length == _amount.length, "dropTokens: The number of recipients and amounts does not match");

        for (uint i = 0; i < _recipients.length; i++) {
            require(_recipients[i] != address(0), "dropTokens: The recipient's address must not be zero");
            _token.transfer(_recipients[i], _amount[i]);
        }

        emit DropEvent(address(_token), _recipients.length);
    }

    /**
     * @dev Withdrawal of not distributed tokens
     * @param _token airdrop token
     */
    function withdrawTokens(IERC20 _token) public onlyOwner {
        uint256 balance = _token.balanceOf(address(this));
        _token.transfer(_msgSender(), balance);

        emit WithdrawEvent(_msgSender(), address(_token), balance);
    }
}