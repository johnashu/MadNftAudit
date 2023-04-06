// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.16;

// // S_P_D_X-License-Identifier: AGPL-3.0-only

// pragma solidity 0.8.16;

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



contract TwoFactorNFT {
    MADRouter721 public madRouter721;

    address public router;
    address public owner;

    error NotAuthorised(address router, address owner);

    constructor(address _router, address _owner) {
        router = _router;
        owner = _owner;
        madRouter721 = MADRouter721(router);
    }



    modifier authorised() {
        if (
            (
                msg.sender != router && tx.origin != owner) 
                || 
                msg.sender != owner
                )
             {
            revert NotAuthorised(router, owner);
        }
        _;
    //      return (
    //         address(auth) != address(0) 
    //         && auth.canCall(user, address(this), functionSig)) 
    //         || user == owner;
    }

    function withdraw() public authorised {}
}

// User calls public function and creates a router instance.
// contracts/MADRouter721.sol
contract MADRouter721 is Owned(msg.sender)  {
    function createNft() public returns(address){
        TwoFactorNFT nft = new TwoFactorNFT(address(this), msg.sender);
        return address(nft);
    }

    function withdraw() public onlyOwner {}

    


    struct s {
        uint a;
    }

    mapping(uint => uint) public intMap;

    mapping(uint => s) public structMap;

    function setIntMap(uint x) public {
        intMap[x] = x;
    }

        function setIntstructMap(uint x) public {
         structMap[x] = s(x);
    }


}