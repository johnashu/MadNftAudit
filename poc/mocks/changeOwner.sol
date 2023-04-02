// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity 0.8.16;

/// @notice Simple single owner authorization mixin.
/// @author Modified from Solmate (https://github.com/Rari-Capital/solmate/blob/main/src/auth/Owned.sol)

abstract contract Owned {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnerUpdated(address indexed user, address indexed newOwner);

    /*//////////////////////////////////////////////////////////////
                            OWNERSHIP STORAGE
    //////////////////////////////////////////////////////////////*/

    address public owner;

    modifier onlyOwner() virtual {
        require(msg.sender == owner, "UNAUTHORIZED");

        _;
    }

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        owner = _owner;

        emit OwnerUpdated(address(0), _owner);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNERSHIP LOGIC
    //////////////////////////////////////////////////////////////*/

    function setOwner(address newOwner) public virtual onlyOwner {
        owner = newOwner;

        emit OwnerUpdated(msg.sender, newOwner);
    }
}

// User calls public function and creates a router instance.
// contracts/MADRouter721.sol
contract MADRouter721 is Owned(msg.sender) {}

contract Attack {
    MADRouter721 public madRouter721;

    constructor() {}

    function attack(uint256 _startBalance) external payable {
        startBalance = _startBalance;

        madHackSafeETH.withdraw(address(this));
    }
}
