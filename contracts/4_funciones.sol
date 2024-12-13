// SPDX-License-Identifier: MIT

// Version

pragma solidity ^0.8.20;

contract functions {

    // funciones de tipo Pure
    // No acceden a la blockchain

    function getName() public pure returns (string memory){
        return "Joan";
    }

    // funciones view que acceden en modo lectura a la blockchain
    uint256 x = 100;
    function getNumber() public view returns (uint256){
        return x*2;
    }

    


}