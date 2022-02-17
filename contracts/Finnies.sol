// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Finnies is ERC20 {
    constructor() ERC20("Finnies", unicode"FΞ") {}

    function mint(address account) external payable {
        _mint(account, msg.value * 1000);
    }

    function redeem(address payable account, uint256 amount) external {
        _burn(msg.sender, amount);
        (bool sent, bytes memory data) = account.call{value: amount / 1000}("");
        require(sent, "Ether not sent");
    }
}
