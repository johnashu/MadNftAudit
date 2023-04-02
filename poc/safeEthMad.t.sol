
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

import "forge-std/Test.sol";
import {MadHackSafeETH, Attack} from "./mocks/safeEthHack.sol";

contract MadHackTest is Test {
    MadHackSafeETH public madHackSafeETH;
    Attack public attack;

    address hackerOwner = makeAddr("HackerOwner");
    address victimSplitter1 = makeAddr("VictimSplitter1");
    address victimSplitter2 = makeAddr("VictimSplitter2");

    address[] payees = [victimSplitter1, victimSplitter2];

    uint256 startBalance = 10 ether;

    function setUp() public {
        madHackSafeETH = new MadHackSafeETH(payees);
        madHackSafeETH.deposit{value: startBalance}();
        attack = new Attack(address(madHackSafeETH), hackerOwner);
        vm.deal(hackerOwner, 1000000);
        // vm.deal(victimSplitter1, 1 ether);
    }

    function _runAttackOnce() private {
        emit log_named_uint("Pre: victimSplitter1.balance      ", victimSplitter1.balance);
        emit log_named_uint("Pre: victimSplitter2.balance      ", victimSplitter2.balance);
        emit log_named_uint("Pre: madHackSafeETH.getbalance    ", address(madHackSafeETH).balance);
        emit log_named_uint("Pre: attack.getbalance            ", address(attack).balance);

        attack.attack{gas: 1_000_000}(startBalance);

        emit log_named_uint("Post: victimSplitter1.balance     ", victimSplitter1.balance);
        emit log_named_uint("Pre: victimSplitter2.balance      ", victimSplitter2.balance);
        emit log_named_uint("Post: madHackSafeETH.getbalance   ", address(madHackSafeETH).balance);
        emit log_named_uint("Post: attack.getbalance           ", address(attack).balance);

        emit log_named_uint("Number times Entered              ", madHackSafeETH.passThrough());
    }

    function testWithdrawRentryAttack() public {
        uint256 blockNumber = 10_000_120;
        // vm.roll(++blockNumber);

        _runAttackOnce();

        // for (uint256 i = 0; i < 5; i++) {
        //     startBalance = address(madHackSafeETH).balance;
        //     _runAttackOnce();
        //     startBalance = startBalance / 2;
        //     vm.roll(++blockNumber);
        // }
    }
}
