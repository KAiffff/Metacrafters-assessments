// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {
    string public tokenName;
    string public tokenAbbreviation;
    uint public totalSupply;
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
    // public variables here
    string public tokenName = "SetKal";
    string public tokenAbbvr = "KAL";
    uint public totalSupply = 0;


    // mapping variable here
    mapping(address=>uint) public tokenHolders;


    // mint function
    function mint(address _address, uint _value) public{
        totalSupply+=_value;
        tokenHolders[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;

    // burn function
    function burn(address _address, uint _value) public{
        require(tokenHolders[_address] > _value, "Cannot burn more than balance tokens");
        totalSupply-=_value;
        tokenHolders[_address] -= _value;
    }
}

}
