pragma solidity ^0.4.0;

contract HelloWorldContract {
    string word = "Hello World";
    
    //getter
    function getWord() constant returns(string) {
            return word;
    }

    //setter
    function setWord(string newWord) returns(string) {
        word = newWord;
        return word;
    }
    
}
