// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC4907.sol";

contract ERC4907Demo is ERC4907 {
    uint256 curId = 1;

    constructor(string memory name_, string memory symbol_)
        ERC4907(name_, symbol_)
    {}

    function mint() public {
        _mint(msg.sender, curId);
        curId++;
    }
}
