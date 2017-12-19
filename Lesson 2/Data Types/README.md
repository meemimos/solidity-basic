# Data Types

Booleans
The possible values are constants true and false.

bool foo = true;
Integers
int - signed integer - 255 bits are used to represent the value and 1 bit to denote the sign;

uint - unsigned integers - all 256 bits are used to represent the value.

Keywords uint and int go up in increments of 8 from the lowest value of 8 to the maximum value of 256 e.g. int8, int16, uint16, uint and int by default are aliases for uint256 and int256, respectively.

uint256 counter = 100;
Fixed Point Numbers
fixed - signed fixed point number;

ufixed - unsigned fixed point number.

However, fixed point numbers are not fully supported by Solidity yet. They can be declared, but cannot be assigned to or from.

So if you want to use float type division in Solidity, different size units have to be used.

Bytes
Another familiar data type which can be used to store raw byte data. Bytes is essentially a dynamic array of bytes. `byte` is an alias for `bytes1` which is an array of 1 byte. The maximum bytes array is `bytes32`.

```javascript
bytes32 foo = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
```

Strings
String literals are written with either double or single-quotes (foo or bar). As with integer literals, their type can vary, but they are implicitly convertible to bytes type. Under the hood, strings are basically an arbitrary-length byte array.

```javascript
string text = "This is my string";
```
Address
Special data type that holds a 20 byte value (size of an Ethereum address). Address types also have members and serve as a base for all contracts.

Address also comes with data types members which are `balance` and `transfer`. It is possible to query the balance of an address using the property `balance` and to send Ether (in units of wei) to an address using the `transfer` function.

```javascript
pragma solidity ^0.4.11;

contract Address {
    function getBalance(address _address) public constant returns (uint256) {
        return _address.balance;
    }
}
```
### Enums
> Enums are one way to create a user-defined type in Solidity where a keyword can be mapped to an integer value.

```javascript
contract Enums {
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setSitStill() {
        choice = ActionChoices.SitStill;
    }
}
```

### LESSON ASSIGNMENTS
1. Declare a boolean named myBool and assign a positive value to it
2. Declare any unsigned integer myNumber and assign a positive (non-zero) value to it
3. Declare a string myText and assign your name as its value
4. Declare any variable with the type of address
