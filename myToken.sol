// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        owner = msg.sender; // Contract deployer is set as the owner
        _mint(msg.sender, 10000 * 10 ** decimals()); // Mint initial supply to the owner
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can mint tokens");
        _mint(account, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}