# React Metacrafters ATM

This is a simple React component for a Metacrafters ATM application. It allows users to connect their MetaMask wallet, view their account balance, deposit and withdraw ETH, check the owner's name, view thier transactions history and a simple calculator with limited operations.

## Requirements

1. MetaMask wallet: Ensure that you have the MetaMask wallet extension installed in your browser.

## Features

The Metacrafters ATM component provides the following features:

- Connect to MetaMask wallet
- Display user's account address
- View user's account balance
- Deposit ETH into the ATM
- Withdraw ETH from the ATM
- Check balance of another account
- View user's transactions history



Please note that the component assumes you have set up and configured MetaMask in your browser.


## Setup

After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
5. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/

