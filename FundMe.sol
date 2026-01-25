//Get funds from users
// Withdraw fund
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.31;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumusd = 5;

    function fund() public payable {
        // Allow users to send $
        //Have a minimum $ Sent
        // 1. How do we send Eth to this contract
        require(msg.value >= minimumusd, "didn't send enough!");
        // a ton of computation

        // What is a revert?
        // undo any actions that have been done, and send the remaining gas back
    }

    // function withdraw() public {}

    function getPrice() public {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI
    }

    function getConversionRate() public {}

    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

}
