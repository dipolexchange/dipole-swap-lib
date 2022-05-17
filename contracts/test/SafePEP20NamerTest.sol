// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity >=0.5.0;

import '../utils/SafePEP20Namer.sol';

// used for testing the logic of token naming
contract SafePEP20NamerTest {
    function tokenSymbol(address token) public view returns (string memory) {
        return SafePEP20Namer.tokenSymbol(token);
    }

    function tokenName(address token) public view returns (string memory) {
        return SafePEP20Namer.tokenName(token);
    }
}

// does not implement name or symbol
contract NamerTestFakeOptionalPEP20 {

}

// complies with PEP20 and returns strings
contract NamerTestFakeCompliantPEP20 {
    string public name;
    string public symbol;

    constructor(string memory name_, string memory symbol_) public {
        name = name_;
        symbol = symbol_;
    }
}

// implements name and symbol but returns bytes32
contract NamerTestFakeNoncompliantPEP20 {
    bytes32 public name;
    bytes32 public symbol;

    constructor(bytes32 name_, bytes32 symbol_) public {
        name = name_;
        symbol = symbol_;
    }
}
