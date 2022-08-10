// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LedgerBalance{
    mapping(address => uint) public balances;

    function updateBalance(uint newBalance) public {
        balances[msg.sender] = newBalance;
    }
}

contract Updater{
    function updateBalance() public returns (uint){
        LedgerBalance balance = new LedgerBalance();
        balance.updateBalance(10);
        return balance.balances(address(this));
    }
}

contract Vault {
    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        address beneficiary = msg.sender;
        uint amount = balances[msg.sender];
        (bool success,) = address(beneficiary).call{value: amount}("");
        require(success, "Transfer failed.");
        balances[msg.sender] = 0;
    }
}
