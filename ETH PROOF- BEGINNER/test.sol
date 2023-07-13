// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName="Moh";
    string public tokenAbbreviation="Kaif";
    uint public totalSupply=0;
    mapping(address => uint) balances;

    constructor(string memory _tokenName, string memory _tokenAbbreviation, uint _totalSupply) {
        tokenName = _tokenName;
        tokenAbbreviation = _tokenAbbreviation;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
