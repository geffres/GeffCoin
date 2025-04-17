// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GeffCoin is ERC20, Ownable {
    constructor() ERC20("GeffCoin", "GEFF") {
        _mint(msg.sender, 42001337 * (10 ** decimals()));
    }

    /**
     * @notice Burn a specific amount of tokens from the sender's wallet
     * @param amount The amount of tokens to burn (including decimals)
     */
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
