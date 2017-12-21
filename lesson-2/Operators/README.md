# Operators

### Booleans

`!` (logical negation)

`&&` (logical conjunction, “and”)

`||` (logical disjunction, “or”)

`==` (equality)

`!=` (inequality)

### Integers
Comparisons: `<=`, `<`, `==`, `!=`, `>=`, `>`, (evaluate to bool)

Bit operators: `&` (bitwise AND), `|` (bitwise OR), `^` (bitwise XOR), `~` (bitwise negation). Bitwise operators treat their operands (what we are doing operation on) as a sequence of bits (zeroes and ones), rather than as decimal, hexadecimal, or octal numbers.

Arithmetic operators: `+`, `-`, unary `-` (`--`), unary `+` (`++`), `*`, `/`, `%` (remainder), `**` (exponentiation), `<<` (left shift), `>>` (right shift).

Address
`<=`, `<`, `==`, `!=`, `>=` and `>`.

### Bytes

**Operators:**

Comparisons: `<=`, `<`, `==`, `!=`, `>=`, `>` (evaluate to bool)

Bit operators: `&` (bitwise AND), `|` (bitwise OR), `^` (bitwise exclusive or, XOR), `~` (bitwise negation), `<<` (left shift), `>>` (right shift)

Index access: `x[k] for 0 <= k < len(x)` returns the k-th byte (read-only).

**Members:**

`.length` yields the fixed length of the byte array.

### Strings
Since strings are essentially arrays of bytes, only the operations available for bytes are available for strings. Thus, concatenation and other basic procedures that are simple in JavaScript are more complex in Solidity.

Below is an example of simple string concatenation. See how strings have to be converted to bytes before manipulating them.

```javascript
function strConcat(string _a, string _b) public constant returns (string){
    bytes memory _aa = bytes(_a);
    bytes memory _bb = bytes(_b);
    bytes memory ab = new bytes(_aa.length + _bb.length);
    uint k = 0;
    uint i = 0;
    for (i = 0; i < _aa.length; i++) ab[k++] = _aa[i];
    for (i = 0; i < _bb.length; i++) ab[k++] = _bb[i];
    return string(ab);
}
```

### Arrays
**Operators:**

Index access: `x[k] for 0 <= k < len(x)` returns the k-th element.

**Members:**

`.length` returns size of the array.

`.push` works only for dynamic storage arrays and bytes (not string). It appends an element at the end of the array. The function returns the new length.

### LESSON ASSIGNMENTS
1. In function `booleanOperatorTest`, negate the variable `foo` and assign the result to variable `negation`
2. In function `booleanOperatorTest`, use logical `and` on variables `foo` and `bar` and assign the result to variable `conjunction`
3. In function `booleanOperatorTest`, use logical `or` on variables `foo` and `bar` and assign the result to variable `disjunction`
4. In function `booleanOperatorTest`, make sure variable `equality` is true when `foo` and `bar` are equal and is false otherwise.
5. In function `booleanOperatorTest`, make sure variable `inequality` is true when `foo` and `bar` are not equal and is false otherwise.
6. In function `integerOperatorTest`, make sure variable `sum` is equal to the sum of `x` and `y`
7. In function `integerOperatorTest`, subtract `y` from `x` and assign the result to variable difference
8. In function `integerOperatorTest`, multiply `x` and `y` and assign the result to variable product
9. In function `integerOperatorTest`, divide `x` by `y` and assign the result to variable `quotient`
10. In function `integerOperatorTest`, make sure `remainder` is equal to the remainder of `x` and `y`
11. In function `integerOperatorTest`, raise `x` to the power of `y` and assign the result to variable `power`
12. In function `addressOperatorTest`, make sure variable `matches` is true when `owner` and `sender` are the same
13. In function `addressOperatorTest`, make sure variable `doesntMatch` is true when `owner` and `sender` are NOT the same