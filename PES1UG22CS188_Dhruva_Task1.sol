// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PES1UG22CS188_DhruvaS {
    uint256 public unum;
    int256 public snum;
    bool public is_even;
    
    
    function add(int256 a, int256 b) public returns (int256) {
        snum = a + b;
        return snum;
    }
    
    
    function multiply(uint256 a, uint256 b) public returns (uint256) {
        unum = a * b;
        return unum;
    }
    
    
    function isEven(uint256 num) public returns (bool) {
        is_even = (num % 2 == 0);
        return is_even;
    }
}