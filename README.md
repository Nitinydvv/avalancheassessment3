# ERC20 Token Contract Deployment and Interaction

This repository contains a Solidity smart contract for an ERC20 token that can be deployed and interacted with using Remix IDE.

## Getting Started

### Prerequisites

To deploy and interact with the contract, you'll need:

- Access to Remix IDE (https://remix.ethereum.org/)
- Basic knowledge of Solidity and Ethereum smart contracts
- Ethereum account with some ETH for gas fees (if deploying on a testnet or mainnet)

### Installation

No installation is required beyond accessing Remix IDE in your web browser.

## Deploying the Contract

1. **Open Remix IDE:**
   - Go to https://remix.ethereum.org/ and create/open a new file for your contract.

2. **Paste Contract Code:**
   - Copy the contents of `Mytoken.sol` into the Remix editor.

3. **Compile Contract:**
   - Navigate to the "Solidity Compiler" tab.
   - Select the appropriate version of Solidity (e.g., ^0.8.0).
   - Click on "Compile MyToken.sol".

4. **Deploy Contract:**
   - Go to the "Deploy & Run Transactions" tab.
   - Select `Mytoken` from the contract dropdown (it should appear after compilation).
   - Enter a name and symbol for your token.
   - Click on "Deploy".

5. **Interact with the Contract:**
   - After deployment, you can interact with the deployed contract using the Remix interface.
   - As the owner, you can mint tokens to any address using the `mint` function.
   - Users can burn tokens they own using the `burn` function.
   - Tokens can be transferred using standard ERC20 transfer functions (`transfer`, `transferFrom`, etc.).

## Contract Details

- **Name:** nitin
- **Symbol:** ETH
- **Initial Supply:** 10,000 tokens (adjustable in the constructor)

## License

This project is licensed under the MIT License - see the LICENSE file for details.
