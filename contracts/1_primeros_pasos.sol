// SPDX-License-Identifier: MIT

// Version

pragma solidity ^0.8.20;

// Importar un Smart Contract desde OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//  Declaración del Smart Contract
contract FirstContract is ERC721 {

    // Direccion de la persona que desplega elcontrato
    address public owner;

    /* Almacenamos la variable "Owner" la direccion 
    de la persona que despliega el contrato */

    constructor(string memory _name, string memory _symbol)
         ERC721(_name, _symbol) {

        owner = msg.sender;

    }

}