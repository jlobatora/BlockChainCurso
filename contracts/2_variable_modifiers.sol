// SPDX-License-Identifier: MIT

// Version

pragma solidity ^0.8.20;

contract variables_modifiers {

    //valores enteros sin signos (uint)

    uint256 a;
    uint public b = 3; //el public nos permite acceder  desde fuera.

    //valores enteros con signo (int)
    int256 c;
    int8 d = -32;
    int e =65;

    // Variable String
    string str;
    string public str_public = "Esto es publivo";
    string private str_private = "Esto es privado.";

    //Variable booleana
    bool boolean;
    bool public boolean_true = true;
    bool private boolena_fakse = false;

    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 bytes_1;

    //Algoritmo de hash
    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("Hola","Joan"));

    //Variables de tipo address
    address my_address;
    address public address1 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address public address2 = msg.sender; //Adress de la persona que está ejecutando.

    //variable enum
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }
    function turnOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options){
        return state;
    }

    //algoritmo sha256 bitcoin
     bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hola","Joan"));
    //otro algoritmo de hashing muy utilizado.
     bytes20 public hashing_ripedmd169 = ripemd160(abi.encodePacked("Hola","Joan"));

     
}