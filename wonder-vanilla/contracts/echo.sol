pragma solidity ^0.4.8;

contract Echo {

    // create the events
    event NewMessage(address from, string message);

    function echoString(string message) returns (address, bytes32, string) {
        address contractAddress = this;
        bytes32 _sha256 = sha256(message);
        NewMessage(msg.sender, message);
        return (contractAddress, _sha256, message);
    }

}

//echo.sol -> https://remix.ethereum.org || solc --bin -> dapp/src/js/contracts/echo.js
