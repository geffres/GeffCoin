// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GeffCoin is ERC20, Ownable {
    constructor() ERC20("GeffCoin", "GEFF") {
        _mint(msg.sender, 4_201_337 * 10 ** decimals());
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
