// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../../src/Fundme.sol";
import {DeployFundMeScript as DeployFundMe} from "../../script/DeployFundme.s.sol";
import {FundFundMe, WithdrawFundMe} from "../../script/Interactions.s.sol";
 
contract FundMeInteractions is Test {
    FundMe fundMe;

    address USER = makeAddr("user");
    uint256 constant STARTING_BALANCE = 100 ether;
    uint256 constant FUND_VALUE = 0.1 ether;
    uint256 constant GAS_PIRCE = 1;

    function setUp() public {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundMe = deployFundMe.run();
        vm.deal(USER, STARTING_BALANCE);
        // Chainlink ETH/USD Price Feed address on Sepolia
    }

    function testUserCanFundInteractions() public {
        FundFundMe fundFundMe = new FundFundMe();
        fundFundMe.fundFundMe(address(fundMe));

        WithdrawFundMe withdrawFundMe = new WithdrawFundMe();
        withdrawFundMe.withdrawFundMe(address(fundMe));

        assert(address(fundMe).balance == 0 );
    }
}