pragma solidity ^0.4.0;

contract CustodialContract {
    address client;
    bool _switch;

    event UpdateStatus(string _msg, uint _amount);
    event UserStatus(string _msg, address user, uint _amount);

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

    //payble function
    function depositeFunds() payable {
        UserStatus("User deposite some money", msg.sender, msg.value);
    }

    //this is not a payable function so we cannot use msg.value or msg.sender 
    function withdrawFunds(uint amount) ifClient {
        if (client.send(amount)) {
            UpdateStatus("User withdraw some money", amount);
            _switch = true;
        } else {
            _switch = false;
        }
    }

    function getFunds() ifClient constant returns(uint) {
        return this.balance;
    }
}