// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter{

    uint public count;
    uint data;

    string public welcome = "Hello! This is a counter contract";

    // address public addr = 0xCA35b7d915458EF540ade6068dfe2F44E8fa733c;
    
    constructor(){
        count = 0;
        data = 0;
    }
    
    // function to increment count by 1
    function inc() public {
        count++;
    }

    // function to decrement count by 1
    function dec() public {
        count--;
    }

    function set() public {
        count = data;
    }

    function get() public view returns (uint) {
        return data;
    }

  



}