# arbitrary-send-erc20
**Item: 1**

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [ERC721Lazy._paymentCheck(address,uint8)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L470-L495) uses arbitrary from in transferFrom: [SafeTransferLib.safeTransferFrom(erc20,_erc20Owner,address(this),value)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L487-L492)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [ERC1155Lazy._paymentCheck(address,uint8)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L577-L602) uses arbitrary from in transferFrom: [SafeTransferLib.safeTransferFrom(erc20,_erc20Owner,address(this),value)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L594-L599)


## Example / POC

## Recommendations

---
# divide-before-multiply
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADMarketplace721.getCurrentPrice(bytes32)](contracts/MADMarketplace721.sol#L1287-L1353) performs a multiplication on the result of a division:
	- [_tick_getCurrentPrice_asm_0 = _startPrice_getCurrentPrice_asm_0 - _endPrice_getCurrentPrice_asm_0 / _endTime_getCurrentPrice_asm_0 - _startTime_getCurrentPrice_asm_0](contracts/MADMarketplace721.sol#L1326-L1329)
	- [price = _startPrice_getCurrentPrice_asm_0 - timestamp()() - _startTime_getCurrentPrice_asm_0 * _tick_getCurrentPrice_asm_0](contracts/MADMarketplace721.sol#L1330-L1333)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADMarketplace1155.getCurrentPrice(bytes32)](contracts/MADMarketplace1155.sol#L1359-L1425) performs a multiplication on the result of a division:
	- [_tick_getCurrentPrice_asm_0 = _startPrice_getCurrentPrice_asm_0 - _endPrice_getCurrentPrice_asm_0 / _endTime_getCurrentPrice_asm_0 - _startTime_getCurrentPrice_asm_0](contracts/MADMarketplace1155.sol#L1398-L1401)
	- [price = _startPrice_getCurrentPrice_asm_0 - timestamp()() - _startTime_getCurrentPrice_asm_0 * _tick_getCurrentPrice_asm_0](contracts/MADMarketplace1155.sol#L1402-L1405)


## Example / POC

## Recommendations

---
# incorrect-equality
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [SplitterImpl.release(ERC20,address)](contracts/lib/splitter/SplitterImpl.sol#L147-L171) uses a dangerous strict equality:
	- [payment == 0](contracts/lib/splitter/SplitterImpl.sol#L154)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [SplitterImpl.release(address)](contracts/lib/splitter/SplitterImpl.sol#L107-L127) uses a dangerous strict equality:
	- [payment == 0](contracts/lib/splitter/SplitterImpl.sol#L112)


## Example / POC

## Recommendations

---
# locked-ether
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Minimal](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L14-L308) has payable functions:
	 - [ERC1155Minimal.safeMint(address,uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L73-L83)
	 - [ERC1155Minimal.burn(address,uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L85-L92)
	 - [ERC1155Minimal.publicMint(uint256)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L185-L196)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [MADMarketplace1155](contracts/MADMarketplace1155.sol#L15-L1452) has payable functions:
	 - [MADMarketplace1155.bid(bytes32)](contracts/MADMarketplace1155.sol#L190-L276)
	 - [MADMarketplace1155.buy(bytes32)](contracts/MADMarketplace1155.sol#L281-L361)
	 - [MADMarketplace1155.receive()](contracts/MADMarketplace1155.sol#L463)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Basic](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L17-L579) has payable functions:
	 - [ERC1155Basic.mintTo(address,uint256,uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L142-L171)
	 - [ERC1155Basic.mintBatchTo(address,uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L173-L201)
	 - [ERC1155Basic.burn(address[],uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L203-L231)
	 - [ERC1155Basic.burnBatch(address,uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L233-L260)
	 - [ERC1155Basic.mint(uint256,uint256)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L344-L373)
	 - [ERC1155Basic.mintBatch(uint256[],uint256[])](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L375-L415)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [SplitterImpl](contracts/lib/splitter/SplitterImpl.sol#L27-L297) has payable functions:
	 - [SplitterImpl.constructor(address[],uint256[])](contracts/lib/splitter/SplitterImpl.sol#L58-L78)
	 - [SplitterImpl.receive()](contracts/lib/splitter/SplitterImpl.sol#L92-L98)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Lazy](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L18-L555) has payable functions:
	 - [ERC721Lazy.burn(uint256[],address)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L131-L157)
	 - [ERC721Lazy.lazyMint(Types.Voucher,uint8,bytes32,bytes32)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L246-L276)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Minimal](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L15-L311) has payable functions:
	 - [ERC721Minimal.safeMint(address,address)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L77-L86)
	 - [ERC721Minimal.burn(address)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L88-L95)
	 - [ERC721Minimal.publicMint()](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L188-L199)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Whitelist](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L18-L669) has payable functions:
	 - [ERC721Whitelist.burn(uint256[],address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L267-L291)
	 - [ERC721Whitelist.mintToCreator(uint256,address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L293-L317)
	 - [ERC721Whitelist.giftTokens(address[],address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L321-L349)
	 - [ERC721Whitelist.mint(uint256)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L434-L460)
	 - [ERC721Whitelist.whitelistMint(uint8,bytes32[])](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L463-L495)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 8**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Lazy](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L18-L662) has payable functions:
	 - [ERC1155Lazy.lazyMint(Types.Voucher,uint8,bytes32,bytes32)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L117-L151)
	 - [ERC1155Lazy.lazyMintBatch(Types.UserBatch,uint8,bytes32,bytes32)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L154-L195)
	 - [ERC1155Lazy.burn(address[],uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L222-L252)
	 - [ERC1155Lazy.burnBatch(address,uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L254-L280)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 9**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [MADMarketplace721](contracts/MADMarketplace721.sol#L15-L1380) has payable functions:
	 - [MADMarketplace721.bid(bytes32)](contracts/MADMarketplace721.sol#L169-L258)
	 - [MADMarketplace721.buy(bytes32)](contracts/MADMarketplace721.sol#L263-L348)
	 - [MADMarketplace721.receive()](contracts/MADMarketplace721.sol#L443)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 10**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Whitelist](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L19-L963) has payable functions:
	 - [ERC1155Whitelist.burn(address[],uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L286-L313)
	 - [ERC1155Whitelist.burnBatch(address,uint256[],uint256[],address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L316-L341)
	 - [ERC1155Whitelist.mintToCreator(uint256,uint256[],uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L344-L378)
	 - [ERC1155Whitelist.mintBatchToCreator(uint256[],uint256[],uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L381-L418)
	 - [ERC1155Whitelist.giftTokens(address[],uint256[],uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L421-L465)
	 - [ERC1155Whitelist.mint(uint256,uint256[],uint256)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L550-L583)
	 - [ERC1155Whitelist.mintBatch(uint256[],uint256[])](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L586-L626)
	 - [ERC1155Whitelist.whitelistMint(uint8,uint256[],uint256,bytes32[])](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L629-L672)
	 - [ERC1155Whitelist.whitelistMintBatch(uint256[],uint256[],bytes32[])](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L675-L717)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

**Item: 11**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Basic](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L17-L447) has payable functions:
	 - [ERC721Basic.mintTo(address,uint256,address)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L146-L169)
	 - [ERC721Basic.burn(uint256[],address)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L171-L197)
	 - [ERC721Basic.mint(uint256)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L281-L307)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---
# reentrancy-no-eth
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L385-L395)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_2)](contracts/MADFactory1155.sol#L398)
	[MADFactory1155.userTokens](contracts/MADFactory1155.sol#L68) can be used in cross function reentrancies:
	- [MADFactory1155._userRender(address)](contracts/MADFactory1155.sol#L795-L806)
	- [MADFactory1155.creatorAuth(address,address)](contracts/MADFactory1155.sol#L686-L708)
	- [MADFactory1155.getIDsLength(address)](contracts/MADFactory1155.sol#L562-L568)
	- [MADFactory1155.userTokens](contracts/MADFactory1155.sol#L68)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L419-L429)
	- [(tokenSalt,deployed) = ERC1155LazyDeployer._1155LazyDeploy(_tokenSalt,_uri,_splitter,router,signer,_royalty,erc20)](contracts/MADFactory1155.sol#L453-L462)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_8)](contracts/MADFactory1155.sol#L465)
	[MADFactory1155.userTokens](contracts/MADFactory1155.sol#L68) can be used in cross function reentrancies:
	- [MADFactory1155._userRender(address)](contracts/MADFactory1155.sol#L795-L806)
	- [MADFactory1155.creatorAuth(address,address)](contracts/MADFactory1155.sol#L686-L708)
	- [MADFactory1155.getIDsLength(address)](contracts/MADFactory1155.sol#L562-L568)
	- [MADFactory1155.userTokens](contracts/MADFactory1155.sol#L68)


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L427-L439)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_5)](contracts/MADFactory721.sol#L442)
	[MADFactory721.userTokens](contracts/MADFactory721.sol#L68) can be used in cross function reentrancies:
	- [MADFactory721._userRender(address)](contracts/MADFactory721.sol#L809-L820)
	- [MADFactory721.creatorAuth(address,address)](contracts/MADFactory721.sol#L700-L722)
	- [MADFactory721.getIDsLength(address)](contracts/MADFactory721.sol#L575-L581)
	- [MADFactory721.userTokens](contracts/MADFactory721.sol#L68)


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L427-L439)
	- [(tokenSalt,deployed) = ERC721LazyDeployer._721LazyDeploy(_tokenSalt,_name,_symbol,_baseURI,_splitter,router,signer,_royalty,erc20)](contracts/MADFactory721.sol#L463-L474)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_8)](contracts/MADFactory721.sol#L477)
	[MADFactory721.userTokens](contracts/MADFactory721.sol#L68) can be used in cross function reentrancies:
	- [MADFactory721._userRender(address)](contracts/MADFactory721.sol#L809-L820)
	- [MADFactory721.creatorAuth(address,address)](contracts/MADFactory721.sol#L700-L722)
	- [MADFactory721.getIDsLength(address)](contracts/MADFactory721.sol#L575-L581)
	- [MADFactory721.userTokens](contracts/MADFactory721.sol#L68)


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L391-L403)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_2)](contracts/MADFactory721.sol#L406)
	[MADFactory721.userTokens](contracts/MADFactory721.sol#L68) can be used in cross function reentrancies:
	- [MADFactory721._userRender(address)](contracts/MADFactory721.sol#L809-L820)
	- [MADFactory721.creatorAuth(address,address)](contracts/MADFactory721.sol#L700-L722)
	- [MADFactory721.getIDsLength(address)](contracts/MADFactory721.sol#L575-L581)
	- [MADFactory721.userTokens](contracts/MADFactory721.sol#L68)


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L419-L429)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_5)](contracts/MADFactory1155.sol#L432)
	[MADFactory1155.userTokens](contracts/MADFactory1155.sol#L68) can be used in cross function reentrancies:
	- [MADFactory1155._userRender(address)](contracts/MADFactory1155.sol#L795-L806)
	- [MADFactory1155.creatorAuth(address,address)](contracts/MADFactory1155.sol#L686-L708)
	- [MADFactory1155.getIDsLength(address)](contracts/MADFactory1155.sol#L562-L568)
	- [MADFactory1155.userTokens](contracts/MADFactory1155.sol#L68)


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [ERC1155Whitelist.whitelistMint(uint8,uint256[],uint256,bytes32[])](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L629-L672):
	External calls:
	- [_mint(msg.sender,_incrementCounter(balances[i]),balances[i],)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L650-L655)
		- [require(bool,string)(ERC1155TokenReceiver(to).onERC1155Received(msg.sender,address(0),id,amount,data) == ERC1155TokenReceiver.onERC1155Received.selector,UNSAFE_RECIPIENT)](contracts/lib/tokens/ERC1155/Base/ERC1155B.sol#L250-L262)
	State variables written after the call(s):
	- [whitelistMinted += balanceTotal](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L662)
	[ERC1155Whitelist.whitelistMinted](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L81) can be used in cross function reentrancies:
	- [ERC1155Whitelist.whitelistMinted](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L81)


## Example / POC

## Recommendations

---
# tx-origin
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.creatorCheck(bytes32)](contracts/MADFactory1155.sol#L711-L734) uses tx.origin for authorization: [creator == origin()()](contracts/MADFactory1155.sol#L725-L727)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.creatorCheck(bytes32)](contracts/MADFactory721.sol#L725-L748) uses tx.origin for authorization: [creator == origin()()](contracts/MADFactory721.sol#L739-L741)


## Example / POC

## Recommendations

---
# tautology
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [Counters.decrement(Counters.Counter)](contracts/lib/utils/Counters.sol#L46-L56) contains a tautology or contradiction:
	- [! _val_decrement_asm_0 | _val_decrement_asm_0 < 0x00](contracts/lib/utils/Counters.sol#L49-L53)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [Counters.decrement(Counters.Counter,uint256)](contracts/lib/utils/Counters.sol#L58-L74) contains a tautology or contradiction:
	- [! _val_decrement_asm_0 | _val_decrement_asm_0 < 0x00 | _val_decrement_asm_0 - amount < 0x00](contracts/lib/utils/Counters.sol#L64-L71)


## Example / POC

## Recommendations

---
# unused-return
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADRouter721._tokenRender(address)](contracts/MADRouter721.sol#L482-L490) ignores return value by [MADFactory721.creatorCheck(colID)](contracts/MADRouter721.sol#L488)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADRouter1155._tokenRender(address)](contracts/MADRouter1155.sol#L595-L603) ignores return value by [MADFactory1155.creatorCheck(colID)](contracts/MADRouter1155.sol#L601)


## Example / POC

## Recommendations

---
# write-after-write
**Item: 1**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [MADRouter1155.feeLookup(bytes4).fee](contracts/MADRouter1155.sol#L568) is written in both
	[fee = sload(uint256)(feeBurn)](contracts/MADRouter1155.sol#L581)
	[fee = 0x00](contracts/MADRouter1155.sol#L584)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [MADRouter721.feeLookup(bytes4).fee](contracts/MADRouter721.sol#L455) is written in both
	[fee = sload(uint256)(feeBurn)](contracts/MADRouter721.sol#L468)
	[fee = 0x00](contracts/MADRouter721.sol#L471)


## Example / POC

## Recommendations

---
# events-maths
**Item: 1**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.whitelistMint(uint8,uint256[],uint256,bytes32[])](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L629-L672) should emit an event for: 
	- [whitelistMinted += balanceTotal](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L662) 


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.mintToCreator(uint256,uint256[],uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L344-L378) should emit an event for: 
	- [freeSupply += balanceTotal](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L359) 


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.mintBatchToCreator(uint256[],uint256[],uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L381-L418) should emit an event for: 
	- [freeSupply += balanceTotal](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L400) 


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.giftTokens(address[],uint256[],uint256,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L421-L465) should emit an event for: 
	- [freeSupply += amountGifted](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L443) 


## Example / POC

## Recommendations

---
# missing-zero-check
**Item: 1**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.constructor(string,SplitterImpl,uint96,address,address,ERC20)._signer](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L90) lacks a zero-check on :
		- [signer = _signer](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L95)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.setSigner(address)._signer](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L201) lacks a zero-check on :
		- [signer = _signer](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L202)


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.constructor(string,string,string,SplitterImpl,uint96,address,address,ERC20)._signer](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L86) lacks a zero-check on :
		- [signer = _signer](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L91)


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.setSigner(address)._signer](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L108) lacks a zero-check on :
		- [signer = _signer](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L109)


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADFactory1155.constructor(address,address,address,address)._router](contracts/MADFactory1155.sol#L94) lacks a zero-check on :
		- [router = _router](contracts/MADFactory1155.sol#L105)


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [Owned.setOwner(address).newOwner](contracts/lib/auth/Owned.sol#L44) lacks a zero-check on :
		- [owner = newOwner](contracts/lib/auth/Owned.sol#L49)


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADFactory721.constructor(address,address,address,address)._router](contracts/MADFactory721.sol#L94) lacks a zero-check on :
		- [router = _router](contracts/MADFactory721.sol#L105)


## Example / POC

## Recommendations

---
# calls-loop
**Item: 1**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L262-L297) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L279)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L106-L141) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L124)


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L504-L543) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L524)


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADMarketplace1155._withdrawOutbid(address,ERC20,uint256,uint160)](contracts/MADMarketplace1155.sol#L688-L740) has external calls inside a loop: [amountOut = swapRouter.exactInputSingle(params)](contracts/MADMarketplace1155.sol#L736-L738)


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L299-L338) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L319)


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721._safeMint(address,uint256)](contracts/lib/tokens/ERC721/Base/ERC721.sol#L251-L268) has external calls inside a loop: [require(bool,string)(to.code.length == 0 || ERC721TokenReceiver(to).onERC721Received(msg.sender,address(0),id,) == ERC721TokenReceiver.onERC721Received.selector,UNSAFE_RECIPIENT)](contracts/lib/tokens/ERC721/Base/ERC721.sol#L257-L267)


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L106-L141) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L123)


## Example / POC

## Recommendations

---

**Item: 8**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L196-L235) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L217)


## Example / POC

## Recommendations

---

**Item: 9**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L319-L358) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L339)


## Example / POC

## Recommendations

---

**Item: 10**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L103-L138) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L120)


## Example / POC

## Recommendations

---

**Item: 11**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L199-L234) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L217)


## Example / POC

## Recommendations

---

**Item: 12**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L388-L427) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L408)


## Example / POC

## Recommendations

---

**Item: 13**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L388-L427) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L409)


## Example / POC

## Recommendations

---

**Item: 14**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L319-L358) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L340)


## Example / POC

## Recommendations

---

**Item: 15**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L103-L138) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L121)


## Example / POC

## Recommendations

---

**Item: 16**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L199-L234) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L216)


## Example / POC

## Recommendations

---

**Item: 17**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L236-L275) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L257)


## Example / POC

## Recommendations

---

**Item: 18**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L351-L386) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L368)


## Example / POC

## Recommendations

---

**Item: 19**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L236-L275) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L256)


## Example / POC

## Recommendations

---

**Item: 20**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L143-L182) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L163)


## Example / POC

## Recommendations

---

**Item: 21**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L159-L194) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L177)


## Example / POC

## Recommendations

---

**Item: 22**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L140-L179) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L160)


## Example / POC

## Recommendations

---

**Item: 23**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155B._mint(address,uint256,uint256,bytes)](contracts/lib/tokens/ERC1155/Base/ERC1155B.sol#L233-L264) has external calls inside a loop: [require(bool,string)(ERC1155TokenReceiver(to).onERC1155Received(msg.sender,address(0),id,amount,data) == ERC1155TokenReceiver.onERC1155Received.selector,UNSAFE_RECIPIENT)](contracts/lib/tokens/ERC1155/Base/ERC1155B.sol#L250-L262)


## Example / POC

## Recommendations

---

**Item: 24**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L262-L297) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L280)


## Example / POC

## Recommendations

---

**Item: 25**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L159-L194) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L176)


## Example / POC

## Recommendations

---

**Item: 26**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADMarketplace721._withdrawOutbid(address,ERC20,uint256,uint160)](contracts/MADMarketplace721.sol#L667-L719) has external calls inside a loop: [amountOut = swapRouter.exactInputSingle(params)](contracts/MADMarketplace721.sol#L715-L717)


## Example / POC

## Recommendations

---

**Item: 27**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L504-L543) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L525)


## Example / POC

## Recommendations

---

**Item: 28**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L282-L317) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L299)


## Example / POC

## Recommendations

---

**Item: 29**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L299-L338) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L320)


## Example / POC

## Recommendations

---

**Item: 30**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdraw(address)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L351-L386) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L369)


## Example / POC

## Recommendations

---

**Item: 31**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L282-L317) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L300)


## Example / POC

## Recommendations

---

**Item: 32**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L143-L182) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L164)


## Example / POC

## Recommendations

---

**Item: 33**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L196-L235) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L216)


## Example / POC

## Recommendations

---

**Item: 34**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdrawERC20(ERC20,address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L140-L179) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L161)


## Example / POC

## Recommendations

---

**Item: 35**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L467-L502) has external calls inside a loop: [share = splitter._shares(addr)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L485)


## Example / POC

## Recommendations

---

**Item: 36**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdraw(address)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L467-L502) has external calls inside a loop: [addr = splitter._payees(i)](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L484)


## Example / POC

## Recommendations

---
# reentrancy-benign
**Item: 1**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L419-L429)
	State variables written after the call(s):
	- [colInfo[colId_scope_5] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Whitelist,tokenSalt_scope_3,block.number,_splitter)](contracts/MADFactory1155.sol#L434-L440)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	State variables written after the call(s):
	- [colInfo[colId] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Minimal,tokenSalt,block.number,_splitter)](contracts/MADFactory721.sol#L372-L378)
	- [userTokens[tx.origin].push(colId)](contracts/MADFactory721.sol#L370)


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter_scope_5 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_3,_shares_scope_4)](contracts/MADFactory721.sol#L234-L238)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_5] = Types.SplitterConfig(_splitter_scope_5,splitterSalt,address(0),_project,0,_projectShare,true)](contracts/MADFactory721.sol#L240-L249)


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter_scope_5 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_3,_shares_scope_4)](contracts/MADFactory1155.sol#L230-L234)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_5] = Types.SplitterConfig(_splitter_scope_5,splitterSalt,address(0),_project,0,_projectShare,true)](contracts/MADFactory1155.sol#L236-L245)


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter_scope_8 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_6,_shares_scope_7)](contracts/MADFactory1155.sol#L277-L281)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_8] = Types.SplitterConfig(_splitter_scope_8,splitterSalt,_ambassador,_project,_ambShare,_projectShare,true)](contracts/MADFactory1155.sol#L283-L292)


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter_scope_8 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_6,_shares_scope_7)](contracts/MADFactory721.sol#L281-L285)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_8] = Types.SplitterConfig(_splitter_scope_8,splitterSalt,_ambassador,_project,_ambShare,_projectShare,true)](contracts/MADFactory721.sol#L287-L296)


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L427-L439)
	State variables written after the call(s):
	- [colInfo[colId_scope_5] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Whitelist,tokenSalt_scope_3,block.number,_splitter)](contracts/MADFactory721.sol#L444-L450)


## Example / POC

## Recommendations

---

**Item: 8**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L385-L395)
	State variables written after the call(s):
	- [colInfo[colId_scope_2] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Basic,tokenSalt_scope_0,block.number,_splitter)](contracts/MADFactory1155.sol#L400-L406)


## Example / POC

## Recommendations

---

**Item: 9**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees,_shares)](contracts/MADFactory1155.sol#L152-L156)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter] = Types.SplitterConfig(_splitter,splitterSalt,address(0),address(0),0,0,true)](contracts/MADFactory1155.sol#L158-L167)


## Example / POC

## Recommendations

---

**Item: 10**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L391-L403)
	State variables written after the call(s):
	- [colInfo[colId_scope_2] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Basic,tokenSalt_scope_0,block.number,_splitter)](contracts/MADFactory721.sol#L408-L414)


## Example / POC

## Recommendations

---

**Item: 11**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L419-L429)
	- [(tokenSalt,deployed) = ERC1155LazyDeployer._1155LazyDeploy(_tokenSalt,_uri,_splitter,router,signer,_royalty,erc20)](contracts/MADFactory1155.sol#L453-L462)
	State variables written after the call(s):
	- [colInfo[colId_scope_8] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Lazy,tokenSalt_scope_6,block.number,_splitter)](contracts/MADFactory1155.sol#L467-L473)


## Example / POC

## Recommendations

---

**Item: 12**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter_scope_2 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_0,_shares_scope_1)](contracts/MADFactory721.sol#L195-L199)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_2] = Types.SplitterConfig(_splitter_scope_2,splitterSalt,_ambassador,address(0),_ambShare,0,true)](contracts/MADFactory721.sol#L201-L210)


## Example / POC

## Recommendations

---

**Item: 13**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter_scope_2 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_0,_shares_scope_1)](contracts/MADFactory1155.sol#L191-L195)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_2] = Types.SplitterConfig(_splitter_scope_2,splitterSalt,_ambassador,address(0),_ambShare,0,true)](contracts/MADFactory1155.sol#L197-L206)


## Example / POC

## Recommendations

---

**Item: 14**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees,_shares)](contracts/MADFactory721.sol#L156-L160)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter] = Types.SplitterConfig(_splitter,splitterSalt,address(0),address(0),0,0,true)](contracts/MADFactory721.sol#L162-L171)


## Example / POC

## Recommendations

---

**Item: 15**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory1155.sol#L352-L361)
	State variables written after the call(s):
	- [colInfo[colId] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Minimal,tokenSalt,block.number,_splitter)](contracts/MADFactory1155.sol#L366-L372)
	- [userTokens[tx.origin].push(colId)](contracts/MADFactory1155.sol#L364)


## Example / POC

## Recommendations

---

**Item: 16**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](contracts/MADFactory721.sol#L427-L439)
	- [(tokenSalt,deployed) = ERC721LazyDeployer._721LazyDeploy(_tokenSalt,_name,_symbol,_baseURI,_splitter,router,signer,_royalty,erc20)](contracts/MADFactory721.sol#L463-L474)
	State variables written after the call(s):
	- [colInfo[colId_scope_8] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Lazy,tokenSalt_scope_6,block.number,_splitter)](contracts/MADFactory721.sol#L479-L485)


## Example / POC

## Recommendations

---
# reentrancy-events
**Item: 1**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._extPath1(Types.Order721,uint256,bytes32,address)](contracts/MADMarketplace721.sol#L988-L1032):
	External calls:
	- [_order.token.safeTransferFrom(address(this),_to,_order.tokenId)](contracts/MADMarketplace721.sol#L1019-L1023)
	Event emitted after the call(s):
	- [Claim(_order.token,_order.tokenId,_orderId,_order.seller,_to,_price)](contracts/MADMarketplace721.sol#L1024-L1031)


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace1155._withdrawOutbid(address,ERC20,uint256,uint160)](contracts/MADMarketplace1155.sol#L688-L740):
	External calls:
	- [amountOut = swapRouter.exactInputSingle(params)](contracts/MADMarketplace1155.sol#L736-L738)
	Event emitted after the call(s):
	- [WithdrawOutbid(_sender,address(_token),amountOut)](contracts/MADMarketplace1155.sol#L739)


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._intPath(Types.Order721,uint256,bytes32,address,uint256)](contracts/MADMarketplace721.sol#L851-L918):
	External calls:
	- [_order.token.safeTransferFrom(address(this),_to,_order.tokenId)](contracts/MADMarketplace721.sol#L905-L909)
	Event emitted after the call(s):
	- [Claim(_order.token,_order.tokenId,_orderId,_order.seller,_to,_price)](contracts/MADMarketplace721.sol#L910-L917)


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._extPath0(Types.Order721,uint256,bytes32,address)](contracts/MADMarketplace721.sol#L920-L986):
	External calls:
	- [_order.token.safeTransferFrom(address(this),_to,_order.tokenId)](contracts/MADMarketplace721.sol#L973-L977)
	Event emitted after the call(s):
	- [Claim(_order.token,_order.tokenId,_orderId,_order.seller,_to,_price)](contracts/MADMarketplace721.sol#L978-L985)


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._withdrawOutbid(address,ERC20,uint256,uint160)](contracts/MADMarketplace721.sol#L667-L719):
	External calls:
	- [amountOut = swapRouter.exactInputSingle(params)](contracts/MADMarketplace721.sol#L715-L717)
	Event emitted after the call(s):
	- [WithdrawOutbid(_sender,address(_token),amountOut)](contracts/MADMarketplace721.sol#L718)


## Example / POC

## Recommendations

---
# constable-states
**Item: 1**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.feeVal3](contracts/MADMarketplace1155.sol#L47) should be constant 


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.feeVal2](contracts/MADMarketplace1155.sol#L46) should be constant 


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.minAuctionIncrement](contracts/MADMarketplace721.sol#L72) should be constant 


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.minAuctionIncrement](contracts/MADMarketplace1155.sol#L71) should be constant 


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory1155.market](contracts/MADFactory1155.sol#L79) should be constant 


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.minBidValue](contracts/MADMarketplace1155.sol#L72) should be constant 


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory721.market](contracts/MADFactory721.sol#L79) should be constant 


## Example / POC

## Recommendations

---

**Item: 8**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.feeBurn](contracts/MADRouter721.sol#L47) should be constant 


## Example / POC

## Recommendations

---

**Item: 9**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.feeMint](contracts/MADRouter1155.sol#L44) should be constant 


## Example / POC

## Recommendations

---

**Item: 10**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.feeVal3](contracts/MADMarketplace721.sol#L47) should be constant 


## Example / POC

## Recommendations

---

**Item: 11**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.feeBurn](contracts/MADRouter1155.sol#L47) should be constant 


## Example / POC

## Recommendations

---

**Item: 12**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.recipient](contracts/MADRouter1155.sol#L50) should be constant 


## Example / POC

## Recommendations

---

**Item: 13**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.MADFactory1155](contracts/MADMarketplace1155.sol#L76) should be constant 


## Example / POC

## Recommendations

---

**Item: 14**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.MADFactory721](contracts/MADMarketplace721.sol#L76) should be constant 


## Example / POC

## Recommendations

---

**Item: 15**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.recipient](contracts/MADRouter721.sol#L56) should be constant 


## Example / POC

## Recommendations

---

**Item: 16**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.feeVal2](contracts/MADMarketplace721.sol#L46) should be constant 


## Example / POC

## Recommendations

---

**Item: 17**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.baseURI](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L51) should be constant 


## Example / POC

## Recommendations

---

**Item: 18**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.minOrderDuration](contracts/MADMarketplace721.sol#L70) should be constant 


## Example / POC

## Recommendations

---

**Item: 19**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.feeMint](contracts/MADRouter721.sol#L44) should be constant 


## Example / POC

## Recommendations

---

**Item: 20**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.recipient](contracts/MADMarketplace1155.sol#L75) should be constant 


## Example / POC

## Recommendations

---

**Item: 21**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory1155.signer](contracts/MADFactory1155.sol#L82) should be constant 


## Example / POC

## Recommendations

---

**Item: 22**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.recipient](contracts/MADMarketplace721.sol#L75) should be constant 


## Example / POC

## Recommendations

---

**Item: 23**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory721.signer](contracts/MADFactory721.sol#L82) should be constant 


## Example / POC

## Recommendations

---

**Item: 24**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.maxOrderDuration](contracts/MADMarketplace1155.sol#L73) should be constant 


## Example / POC

## Recommendations

---

**Item: 25**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.minBidValue](contracts/MADMarketplace721.sol#L73) should be constant 


## Example / POC

## Recommendations

---

**Item: 26**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.minOrderDuration](contracts/MADMarketplace1155.sol#L70) should be constant 


## Example / POC

## Recommendations

---

**Item: 27**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.maxOrderDuration](contracts/MADMarketplace721.sol#L71) should be constant 


## Example / POC

## Recommendations

---
# immutable-states
**Item: 1**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.erc20](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L39) should be immutable 


## Example / POC

## Recommendations

---

**Item: 2**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.MADFactory1155](contracts/MADRouter1155.sol#L32) should be immutable 


## Example / POC

## Recommendations

---

**Item: 3**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.price](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L54) should be immutable 


## Example / POC

## Recommendations

---

**Item: 4**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.splitter](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L36) should be immutable 


## Example / POC

## Recommendations

---

**Item: 5**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.MADFactory721](contracts/MADRouter721.sol#L32) should be immutable 


## Example / POC

## Recommendations

---

**Item: 6**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.publicPrice](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L61) should be immutable 


## Example / POC

## Recommendations

---

**Item: 7**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Minimal.splitter](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L26) should be immutable 


## Example / POC

## Recommendations

---

**Item: 8**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.maxFeeMint](contracts/MADRouter1155.sol#L53) should be immutable 


## Example / POC

## Recommendations

---

**Item: 9**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.erc20](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L36) should be immutable 


## Example / POC

## Recommendations

---

**Item: 10**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory1155.router](contracts/MADFactory1155.sol#L76) should be immutable 


## Example / POC

## Recommendations

---

**Item: 11**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.maxSupply](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L55) should be immutable 


## Example / POC

## Recommendations

---

**Item: 12**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC2981._royaltyFee](contracts/lib/tokens/common/ERC2981.sol#L10) should be immutable 


## Example / POC

## Recommendations

---

**Item: 13**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.splitter](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L33) should be immutable 


## Example / POC

## Recommendations

---

**Item: 14**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory721.router](contracts/MADFactory721.sol#L76) should be immutable 


## Example / POC

## Recommendations

---

**Item: 15**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Minimal.erc20](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L29) should be immutable 


## Example / POC

## Recommendations

---

**Item: 16**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Minimal.splitter](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L28) should be immutable 


## Example / POC

## Recommendations

---

**Item: 17**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.maxFeeBurn](contracts/MADRouter721.sol#L53) should be immutable 


## Example / POC

## Recommendations

---

**Item: 18**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.splitter](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L33) should be immutable 


## Example / POC

## Recommendations

---

**Item: 19**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Lazy.erc20](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L52) should be immutable 


## Example / POC

## Recommendations

---

**Item: 20**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.erc20](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L37) should be immutable 


## Example / POC

## Recommendations

---

**Item: 21**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.maxFeeBurn](contracts/MADRouter1155.sol#L56) should be immutable 


## Example / POC

## Recommendations

---

**Item: 22**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [Owned.owner](contracts/lib/auth/Owned.sol#L22) should be immutable 


## Example / POC

## Recommendations

---

**Item: 23**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC2981._royaltyRecipient](contracts/lib/tokens/common/ERC2981.sol#L12) should be immutable 


## Example / POC

## Recommendations

---

**Item: 24**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.maxSupply](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L57) should be immutable 


## Example / POC

## Recommendations

---

**Item: 25**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Minimal.erc20](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L31) should be immutable 


## Example / POC

## Recommendations

---

**Item: 26**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.maxSupply](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L57) should be immutable 


## Example / POC

## Recommendations

---

**Item: 27**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Minimal.price](contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L32) should be immutable 


## Example / POC

## Recommendations

---

**Item: 28**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.splitter](contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L34) should be immutable 


## Example / POC

## Recommendations

---

**Item: 29**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Lazy.splitter](contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L49) should be immutable 


## Example / POC

## Recommendations

---

**Item: 30**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Lazy.erc20](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L58) should be immutable 


## Example / POC

## Recommendations

---

**Item: 31**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Minimal.price](contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L34) should be immutable 


## Example / POC

## Recommendations

---

**Item: 32**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.maxFeeMint](contracts/MADRouter721.sol#L50) should be immutable 


## Example / POC

## Recommendations

---

**Item: 33**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.price](contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L54) should be immutable 


## Example / POC

## Recommendations

---

**Item: 34**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Lazy.splitter](contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L55) should be immutable 


## Example / POC

## Recommendations

---

**Item: 35**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.erc20](contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L36) should be immutable 


## Example / POC

## Recommendations

---

**Item: 36**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.publicPrice](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L66) should be immutable 


## Example / POC

## Recommendations

---

**Item: 37**

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.maxSupply](contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L60) should be immutable 


## Example / POC

## Recommendations

---
