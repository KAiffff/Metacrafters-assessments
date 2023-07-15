// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    function requireExample(uint _stock) public pure returns (string memory) {
        uint availableStock = 100;
        require(_stock <= availableStock, "Insufficient stock available");
        return "Product added to cart. Proceed to checkout.";

    }

    function assertExample(uint _num2) public pure returns (string memory) {
        uint currentBid = 500;
        assert(_num2 > currentBid);
        return "Bid accepted. You are the highest bidder.";
    }

    function revertExample(uint _age) public pure {
        uint minimumAge = 18;
        if (_age < minimumAge) {
            revert("You must be at least 18 years old to access this content");
        }
    }
}
