pragma solidity ^0.4.0;

contract HelloWorldContract {
    string public word = "Hello World";

    address issuer;
    
    function HelloWorldContract() {
        issuer = msg.sender;
    }
    
    function getWord() constant returns(string) {
        return word;
    }
    
    modifier ifIssuer() {
        if (issuer != msg.sender) {
            throw;
        } else {
            _;
        }
    }
    
    function setWord(string newWord) ifIssuer returns(string) {
        word = newWord;
        return word;
    }
}