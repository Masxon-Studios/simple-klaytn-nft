
### README for the Smart Contracts Repository

```markdown
# The Kiln: Smart Contracts for NFT Minting on Klaytn

This repository contains the smart contracts for The Kiln, a decentralized NFT minting platform built on the Klaytn blockchain.

## 🧠 Smart Contract

Our smart contract, written in Solidity, includes:

- **Minting functionality with role-based access**
- **On-chain metadata storage**
- **Customizable supply limits**
- **Owner-controlled minting permissions**

## 🛠️ Getting Started

### Prerequisites

- Node.js (v14 or higher)
- npm (v6 or higher)
- Hardhat
- Git

### Installation

1. **Clone the repository**:
   ```bash
   git clone https: https://github.com/Masxon-Studios/klaytn-nft-minter.git
   cd THEKILN-contracts

Install dependencies:
bash
npm install

Set up environment variables:
Create a .env file in the root directory with the following:
text
KLAYTN_PRIVATE_KEY=your_private_key
KLAYTN_NODE_URL=https://api.baobab.klaytn.net:8651

Deployment
Deploy the contract to Klaytn Baobab testnet:
bash
npx hardhat run scripts/deploy.js --network baobab

🏗️ Project Structure
text
THEKILN-contracts/
│
├── contracts/
│   └── NFTMinter.sol
│
├── scripts/
│   └── deploy.js
│
├── test/
│   └── NFTMinter.test.js
│
├── .env
├── .gitignore
├── package.json
└── README.md

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.
🙏 Acknowledgments
Klaytn - For providing the blockchain platform and tools
Hardhat - For the robust development environment

Masxon Studios 
Project Link: https://github.com/Masxon-Studios/klaytn-nft-minter.git
