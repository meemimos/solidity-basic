pragma solidity ^0.4.0;

contract CallerContract {
    
    // CalledContract toBeCalled = CalledContract(0x038f160ad632409bfb18582241d9fd88c1a072ba);
    // you can use the address of depoyled contract as above
    CalledContract toBeCalled = new CalledContract();

    function getNumber() constant returns(uint) {
        return toBeCalled.getNumber();
    }
    
    function getWord() constant returns(bytes32) {
        return toBeCalled.getWord();
    }
}

contract CalledContract {
    uint number = 89;
    bytes32 word = "Hello world";

    function getNumber() constant returns(uint) {
        return number;
    }
    
    function setNumber(uint _number) returns(uint) {
        number = _number;
    }

    function getWord() constant returns(bytes32) {
        return word;
    }
}