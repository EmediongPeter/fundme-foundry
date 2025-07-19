<!-- Banner & Social Icons -->
<p align="center">
  <img src="https://img.shields.io/badge/Blockchain%20Developer-Ethereum-blue?style=for-the-badge&logo=ethereum"/>
  <img src="https://img.shields.io/badge/Smart%20Contracts-Solidity-black?style=for-the-badge&logo=solidity"/>
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge"/>
</p>

<p align="center">
  <a href="https://x.com/emeediong_peter"><img src="https://img.shields.io/badge/X-@emeediong_peter-1DA1F2?style=for-the-badge&logo=x&logoColor=white"/></a>
  <a href="https://www.linkedin.com/in/emediong-peter-81b46a330"><img src="https://img.shields.io/badge/LinkedIn-Emediong%20Peter-0e76a8?style=for-the-badge&logo=linkedin&logoColor=white"/></a>
  <a href="https://github.com/EmediongPeter"><img src="https://img.shields.io/badge/GitHub-EmediongPeter-181717?style=for-the-badge&logo=github&logoColor=white"/></a>
</p>

---

# 🚀 FundMe Smart Contract Project

> "Building the future of decentralized crowdfunding, one block at a time."

---

## 📖 Table of Contents
<details>
<summary>Expand</summary>

- [About Me](#about-me)
- [About This Project](#about-this-project)
- [Quickstart Guide](#quickstart-guide)
- [Directory Structure](#directory-structure)
- [What I Learned](#what-i-learned)
- [Project Highlights](#project-highlights)
- [Resources & Further Learning](#resources--further-learning)
- [Connect With Me](#connect-with-me)
- [License](#license)
</details>

---

## 👋 About Me

Hi, I'm **Emediong Peter**!<br/>
A passionate blockchain developer, smart contract enthusiast, and lifelong learner. My journey into web3 started with curiosity and a drive to build transparent, trustless systems that empower people globally. Through Cyfrin's Foundry course, I've transformed from a blockchain newbie to a confident smart contract builder, and I'm excited to share my progress and help others on the same path!

---

## 💡 About This Project

**FundMe** is a decentralized crowdfunding smart contract built with [Foundry](https://book.getfoundry.sh/) and inspired by the Cyfrin Updraft course. It allows users to fund the contract with ETH, tracks contributors, and enables the owner to withdraw funds securely. This project is my hands-on playground for mastering Solidity, Chainlink oracles, and best practices in smart contract development.

**Why I built this:**
- To deeply understand the mechanics of DeFi and crowdfunding on Ethereum.
- To practice secure contract patterns (modifiers, custom errors, receive/fallback, etc.).
- To learn how to use Chainlink price feeds and interact with real-world data.
- To create a resource for others learning smart contracts!

---

## ⚡ Quickstart Guide

### Prerequisites
- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Node.js & npm (for some scripts)
- Git

### Setup
```bash
# 1. Clone the repo
$ git clone https://github.com/EmediongPeter/fundme-foundry
$ cd fundme-foundry

# 2. Install dependencies
$ make install

# 3. Build contracts
$ make build

# 4. Run tests
$ make test
```

### Deploying
- **Local (Anvil):**
  - Start local node: `make anvil`
  - Deploy: `make deploy`
- **Sepolia Testnet:**
  - Set your `SEPOLIA_RPC_URL`, `METAMASK_PRIVATE_KEY`, and `ETHERSCAN_API_KEY` in a `.env` file (never commit secrets!)
  - Deploy: `make deploy-sepolia`

### Other Useful Commands
- Format code: `make format`
- Run zkSync build/tests: `make zkbuild` / `make zktest`
- See all commands: `cat Makefile`

> **Reminder:** You need valid API keys and a funded testnet wallet for deployments. Never share your private keys!

---

## 🗂️ Directory Structure

```
project_1/
├── src/           # Solidity smart contracts (FundMe, PriceConverter, etc.)
├── script/        # Deployment and interaction scripts
├── test/          # Unit, integration, and mock tests
│   ├── unit/
│   ├── integration/
│   └── mocks/
├── lib/           # External dependencies (Chainlink, Foundry std, etc.)
├── cache/         # Build cache
├── Makefile       # Automation for build, test, deploy, etc.
├── foundry.toml   # Foundry config
└── README.md      # This file
```

- **src/**: Main contracts (FundMe, PriceConverter, etc.)
- **script/**: Scripts for deploying and interacting with contracts
- **test/**: All tests (unit, integration, mocks)
- **lib/**: External libraries (auto-managed)
- **Makefile**: One-stop shop for all dev commands

---

## 🧠 What I Learned

> "Learning by building: from zero to Solidity hero!"

### 🔹 Solidity Fundamentals
- **ERC20 tokens**: What they are, how they work
- **DeFi protocols**: How protocols like Aave, Uniswap, Compound operate
- **View vs Pure**: `view` reads state, `pure` does not even read state
  ```solidity
  function retrieve() view public returns (uint256) {
      return favoriteNumber;
  }
  function pure_fn(uint256 number) pure public returns (uint256) {
      return 4;
  }
  ```
- **Structs & Arrays**: Modeling data with `struct` and dynamic/fixed arrays
- **Memory vs Calldata**: Temporary storage vs. read-only input
- **Mappings**: Efficient key-value storage
- **Typecasting & Contract Factories**: Using `new` to deploy contracts
- **Inheritance & Overrides**: Extending and customizing contract logic
- **String Handling**: Why strings need `memory` keyword
- **Chainlink Oracles**: Fetching real-world data (ETH/USD price)
- **msg.sender & msg.value**: Understanding transaction context
- **ETH Transfer Methods**: `transfer`, `send`, `call` (use `call` for flexibility)
- **Modifiers & Custom Errors**: Secure, gas-efficient error handling
- **Constructor**: Initialization logic
- **Constants & Immutables**: Gas optimization
- **Receive & Fallback**: Handling unexpected ETH transfers
- **Private Key Management**: Using encrypted keys, not .env
- **cast & forge tools**: For sending, calling, and testing contracts
- **Testing**: Unit, integration, forked, and coverage
- **Structs & Types**: Custom data types for clarity
- **Gas Optimization**: Use private variables, getter functions

### 📝 Personal Insights
- Building this project made abstract DeFi concepts real.
- Debugging and testing taught me the importance of coverage and security.
- Chainlink integration opened my eyes to the power of oracles.
- I learned to automate everything with Makefile for a smooth dev workflow.

---

## 🌟 Project Highlights

- **FundMe.sol**: Core contract for accepting and tracking ETH contributions.
- **PriceConverter.sol**: Library for real-time ETH/USD conversion using Chainlink.
- **DeployFundMe.s.sol**: Script for deploying FundMe with correct constructor args.
- **Interactions.s.sol**: Scripts for funding and withdrawing from the contract.
- **MockV3Aggregator.sol**: Mock for local Chainlink price feed testing.
- **Makefile**: All-in-one automation for building, testing, deploying, and more.

### 🛠️ How to Interact
- Fund the contract by sending ETH to it (via script or direct transaction)
- Only the owner can withdraw funds (protected by `onlyOwner` modifier)
- All contributions are tracked and can be queried

---

## 📚 Resources & Further Learning

- [Cyfrin Updraft Course](https://updraft.cyfrin.io/)
- [Foundry Book](https://book.getfoundry.sh/)
- [Solidity Docs](https://docs.soliditylang.org/)
- [Chainlink Docs](https://docs.chain.link/)
- [Ethereum.org](https://ethereum.org/)
- [Cyfrin GitHub](https://github.com/Cyfrin)
- [Chainlink GitHub](https://github.com/smartcontractkit/chainlink)

---

## 🤝 Connect With Me

<p align="center">
  <a href="https://x.com/emeediong_peter"><img src="https://img.shields.io/badge/X-@emeediong_peter-1DA1F2?style=for-the-badge&logo=x&logoColor=white"/></a>
  <a href="https://www.linkedin.com/in/emediong-peter-81b46a330"><img src="https://img.shields.io/badge/LinkedIn-Emediong%20Peter-0e76a8?style=for-the-badge&logo=linkedin&logoColor=white"/></a>
  <a href="https://github.com/EmediongPeter"><img src="https://img.shields.io/badge/GitHub-EmediongPeter-181717?style=for-the-badge&logo=github&logoColor=white"/></a>
</p>

> **Let’s build the future of web3 together! Open to collaborations, questions, and learning opportunities.**

---

## 📝 License

This project is licensed under the [MIT License](LICENSE).

<p align="right">(<a href="#🚀-fundme-smart-contract-project">back to top</a>) ⬆️</p>
