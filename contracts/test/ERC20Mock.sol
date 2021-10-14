// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20 {
    constructor(
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) { }

    function mint(address to, uint amount) external {
        _mint(to, amount);
    }
}