// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "contracts/SafeMath.sol";

contract RueToken is ERC20, Ownable {
    uint256 public cost = 1000;
    constructor() ERC20("RueToken", "RTK") {
        _mint(msg.sender, 1000000);   
    }
   
     function buyToken(address receiver, uint256 amount)public payable {
        _mint (receiver, amount);
    }

   
    function getBalance(address receiver) public view returns(uint256){   
         return balanceOf(receiver);
  }
}