// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Contract{
    string public name = "Ruben";
    address payable public sale;
    address payable public purchase;

    struct Product{
        string name;
        uint price;
        uint quantity;
        bool paid;
    }

    function toSale() public {
        sale = payable(msg.sender);
    }

    function toPay() public {
        purchase = payable(msg.sender);
    }

    function getSale() public view returns (address){
        return sale;
    }

}