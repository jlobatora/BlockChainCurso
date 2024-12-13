// SPDX-License-Identifier: MIT

// Version

pragma solidity ^0.8.20;

contract ethSend {

    constructor() payable {} 
    receive() external payable {} //funcion que se encarga de recibir los eth cuando se realiza un pago de este smartcontract

    // Eventos
    event sendStatus(bool);
    event callStatus(bool, bytes);

    //tres formas de hacer envio

    //send via Transfer - 2300 unidades gas
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether); //si queremos enviar gas ponemos 1 sin ether
    }

    //send - 2300 unidades gas
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "El envio ha fallado"); //costamos la ejecucion de la funcion
    }

    //call - envia todo el gas sin restriccion
    function sendViaCall(address payable _to) public payable {
        (bool success, bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(success, data);
        require(success == true, "El envio ha fallado");
    }

}


contract ethReceiver {

    event log(uint amount, uint gas);
    receive() external payable {
        emit log(address(this).balance, gasleft());
    }

}