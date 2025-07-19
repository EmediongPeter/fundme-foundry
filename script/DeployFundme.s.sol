// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/Fundme.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMeScript is Script {
    FundMe public fundMe;

    function setUp() public {}

    function run() external returns (FundMe) {
        HelperConfig helperConfig = new HelperConfig();
        address ethUsdPriceFeedAddress = helperConfig.activeNetworkConfig();

        vm.startBroadcast();

        fundMe = new FundMe(ethUsdPriceFeedAddress); // Chainlink ETH/USD Price Feed address on Sepolia
        console.log("FundMe contract deployed at:", address(fundMe));

        vm.stopBroadcast();

        return fundMe;
    }
}
