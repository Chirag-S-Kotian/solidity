// get funds from users
// withdraw funds 
// set a minimum funding value in USD 

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract FundMe{
    function fund() public payable{
        // Allow users to send $
        // Have a minimum $ sent 
        // 1. How do we send ETH to this contract? 
        require(msg.value > 1e18 , "didn't send enough ETH");
        // what is a revert?
        // undo any actions that have been done, and send the remaaining gas back
    }
}