pragma solidity ^0.4.0;

contract CustodialContract {
    address client;
    bool _switch;

    function CustodialContract() {
        client = msg.sender;
    }

    modifier ifClient() {
        if (msg.sender != client) {
            throw;
        } else { 
            _;
        }
    }

    function depositeFunds() payable {

    }

    function withdrawFunds(uint amount) ifClient {
        if (client.send(amount)) {
            _switch = true;
        } else {
            _switch = false;
        }

    }

    function getFunds() ifClient constant returns(uint) {
        return this.balance;
    }
}