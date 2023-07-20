// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DegenToken {
    string public name = "Degen Gaming Token";
    string public symbol = "DGN";
    uint256 public totalSupply = 100000;
    address public owner = msg.sender;
    
    mapping(address => uint256) private balances;
    string[] public items = ["T-shirt", "Backpack", "Surprise"]; 
    
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Redeem(address indexed from, string itemName);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }
    
    constructor() {
        balances[owner] = totalSupply;
    }

    // Transfer tokens
    function transfer(address recipient, uint256 amount) external returns (bool) {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;
    }
    
    // Mint tokens
    function mint(address to, uint256 amount) external onlyOwner {
        totalSupply += amount;
        balances[to] += amount;
        emit Mint(to, amount);
    }
    
    // Redeem tokens for an item
    function redeem() external returns (string memory) {
        uint256 redemptionAmount = 300;
        require(balances[msg.sender] >= redemptionAmount, "Insufficient tokens to redeem");
        
        uint256 randomIndex = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % items.length;
        string memory chosenItem = items[randomIndex];

        balances[msg.sender] -= redemptionAmount;
        emit Redeem(msg.sender, chosenItem);
        return chosenItem;
    }
    
    // Burn tokens
    function burn(uint256 amount) external {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
        emit Burn(msg.sender, amount);
    }
    
    // Fetch balance
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
    
    // Check owner
    function getOwner() external view returns (address) {
        return owner;
    }
}
