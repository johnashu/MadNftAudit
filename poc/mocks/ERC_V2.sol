// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity 0.8.18;

abstract contract ERC721 {
    // Contract to hold ERC721 functions in the ERC standard
    string public name;

    string public symbol;
}

abstract contract ERC1155 {
// Contract to hold ERC1155 functions in the ERC standard
}

abstract contract ERCShared {
// Contract to hold Shared ERC721 functions used by ERC contracts.
}


contract ERC721Impl is ERC721, ERCShared {
    // Complete the implementation of this version of ERC721
    // Contructor will take in common arguments such as owner, router and other
    // shared logic required for the Mad Protocol.

    uint8 expectedNumberOfArgs = 3; // Mising args to unpack via assembly.

    string baseURI;
    uint256 someOtherVal;

    address immutable router;
    uint256 price;
    uint256 maxSupply;
    uint96 fraction;
    // ERC20 erc20;

    constructor(
        bytes32[] memory _args,
        uint256 _price,
        uint256 _maxSupply,
        // ...
        uint96 _fraction,
        address _router
    ) 
    // ERC20 _erc20
    // ...
    {
        if (_args.length != expectedNumberOfArgs) revert("Wrong Amount Of Args");
        router = _router;

        // ...

        // Args missing from the Basic ERC721 constructor.
        // We need to unpack them in the correct order from the array.

        //  0 string memory _name
        //  1 string memory _symbol
        //  2 string memory _baseURI
        //  3 uint someOtherVal

        name = string(abi.encodePacked(_args[0]));
        symbol = string(abi.encodePacked(_args[1]));
        baseURI = string(abi.encodePacked(_args[2]));
        someOtherVal = uint256(_args[3]);
    }
}


contract ERC1155Impl is ERC1155, ERCShared {
    // Complete the implementation of this version of ERC1155
    // Contructor will take in common arguments such as owner, router and other
    // shared logic required for the Mad Protocol.

    uint8 expectedNumberOfArgs = 2; // Mising args to unpack via assembly.

    string _uri;
    address signer;

    uint256 someOtherVal;

    address immutable router;
    uint256 price;
    uint256 maxSupply;
    uint96 fraction;
    // ERC20 erc20;

    constructor(
        bytes32[] memory _args,
        uint256 _price,
        uint256 _maxSupply,
        // ...
        uint96 _fraction,
        address _router
    ) 
    // ERC20 _erc20
    // ...
    {
        if (_args.length != expectedNumberOfArgs) revert("Wrong Amount Of Args");
        router = _router;

        // ...

        // Args missing from the BASIC ERC1155 constructor.
        // We need to unpack them in the correct order from the array.
        
       //    0 string memory __uri,

        _uri = string(abi.encodePacked(_args[0]));

    }
}
