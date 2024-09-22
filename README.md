# MyToken Solidity Contract

## Overview
The **MyToken** contract is a simple implementation of an ERC20-like token in Solidity. This contract allows users to mint, transfer, and burn tokens while tracking balances and total supply.

## Description
This contract defines a token with basic functionalities, including:
- **Minting** new tokens by the contract owner.
- **Transferring** tokens between accounts.
- **Burning** tokens to reduce the total supply.

### Features
- **Owner Control**: Only the contract owner can mint new tokens.
- **Event Logging**: Events are emitted for transfer and approval actions.
- **Balance Tracking**: Each account's balance is stored in a mapping.

## Getting Started

### Prerequisites
- An internet connection.
- A web browser.

### Tools
You can use **Remix**, an online Solidity IDE, to compile and deploy this contract. Access Remix at [https://remix.ethereum.org/](https://remix.ethereum.org/).

### Executing the Program

1. **Open Remix**:
   - Navigate to [Remix Ethereum](https://remix.ethereum.org/).

2. **Create a New File**:
   - Click the "+" icon in the left sidebar to create a new file.
   - Save the file with a `.sol` extension (e.g., `MyToken.sol`).

3. **Copy the Solidity Code**:
   - Paste the following code into the new file:

   ```solidity
   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.0;

   contract MyToken {
       string public name;
       string public symbol;
       uint256 public totalSupply;
       address public owner;

       mapping(address => uint256) private _balances;

       event Transfer(address indexed from, address indexed to, uint256 value);
       event Approval(address indexed owner, address indexed spender, uint256 value);

       constructor(string memory _name, string memory _symbol) {
           name = _name;
           symbol = _symbol;
           owner = msg.sender;
           _mint(msg.sender, 1000000);
       }

       function balanceOf(address account) public view returns (uint256) {
           return _balances[account];
       }

       function transfer(address recipient, uint256 amount) public returns (bool) {
           require(recipient != address(0), "Transfer to zero address");
           require(_balances[msg.sender] >= amount, "Not enough balance");

           _balances[msg.sender] -= amount;
           _balances[recipient] += amount;

           emit Transfer(msg.sender, recipient, amount);
           return true;
       }

       function mint(address account, uint256 amount) public {
           require(msg.sender == owner, "Only the owner can mint tokens");
           _mint(account, amount);
       }

       function burn(uint256 amount) public {
           require(_balances[msg.sender] >= amount, "Not enough balance");
           _balances[msg.sender] -= amount;
           totalSupply -= amount;

           emit Transfer(msg.sender, address(0), amount);
       }

       function _mint(address account, uint256 amount) internal {
           require(account != address(0), "Mint to zero address");

           totalSupply += amount;
           _balances[account] += amount;

           emit Transfer(address(0), account, amount);
       }
   }
## Code Explanation

The **MyToken** contract is a basic implementation of an ERC20-like token in Solidity, designed to manage the creation, transfer, and destruction of tokens. Below are key components of the contract:

- **State Variables**:
  - `name`: The name of the token.
  - `symbol`: The token's symbol (ticker).
  - `totalSupply`: The total amount of tokens in circulation.
  - `owner`: The address that deploys the contract, who has special privileges (like minting tokens).
  - `_balances`: A mapping that tracks the balance of each account.

- **Events**:
  - `Transfer`: Emitted when tokens are transferred from one account to another.
  - `Approval`: Emitted when an account is approved to spend tokens on behalf of another account.

- **Constructor**:
  - Initializes the token's name and symbol, sets the contract owner, and mints an initial supply of tokens to the owner's address.

- **Functions**:
  - `balanceOf`: Returns the token balance of a specified address.
  - `transfer`: Allows token holders to transfer tokens to another address.
  - `mint`: Allows the contract owner to create new tokens and assign them to an account.
  - `burn`: Allows token holders to destroy tokens, reducing the total supply.
  - `_mint`: A private function that handles the internal minting logic.

This contract provides a foundational framework for creating fungible tokens on the Ethereum blockchain, enabling basic operations like transferring, minting, and burning tokens while ensuring proper access control for sensitive actions.
   
### Compile the Code:
1. Click on the **"Solidity Compiler"** tab in the left sidebar.
2. Ensure the compiler version is compatible (e.g., `0.8.0`).
3. Click on the **Compile MyToken.sol** button.

### Deploy the Contract:
1. Click on the **"Deploy & Run Transactions"** tab in the left sidebar.
2. From the dropdown, select the **MyToken** contract.
3. Click on the **Deploy** button.

### Interact with the Contract:
1. After deployment, click on the deployed contract in the left sidebar.
2. Use the available functions to check balances, transfer tokens, mint new tokens, or burn existing tokens.

## Authors
- **NITIN YADAV** - [Nitinydvv](https://github.com/Nitinydvv)

## License
This project is licensed under the MIT License. See the [LICENSE.md](LICENSE.md) file for details.
