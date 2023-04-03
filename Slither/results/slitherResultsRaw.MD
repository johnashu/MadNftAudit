# Slither Results

The following number of issues were found, categorized by their severity:

- Critical 
- High: 22 issues
- Medium: 82 issues
- Low: 68 issues
- Optimization: 64 issues

# arbitrary-send-erc20

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [ERC721Lazy._paymentCheck(address,uint8)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L470-L495) uses arbitrary from in transferFrom: [SafeTransferLib.safeTransferFrom(erc20,_erc20Owner,address(this),value)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L487-L492)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [ERC1155Lazy._paymentCheck(address,uint8)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L577-L602) uses arbitrary from in transferFrom: [SafeTransferLib.safeTransferFrom(erc20,_erc20Owner,address(this),value)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L594-L599)


## Example / POC

## Recommendations

---
# uninitialized-state

> Items Found: 20

_Item 1 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADRouter721.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L56) is never initialized. It is used in:
	- [MADRouter721.withdraw(address,ERC20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L374-L442)
	- [MADRouter721.setRecipient(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L577-L585)


## Example / POC

## Recommendations

---

_Item 2 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADFactory1155.market](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L79) is never initialized. It is used in:
	- [MADFactory1155.setMarket(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L508-L515)
	- [MADFactory1155._isMarket()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L752-L759)


## Example / POC

## Recommendations

---

_Item 3 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.maxOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L71) is never initialized. It is used in:
	- [MADMarketplace721.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L485-L519)
	- [MADMarketplace721._makeOrderChecks(uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1098-L1137)


## Example / POC

## Recommendations

---

_Item 4 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADFactory721.market](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L79) is never initialized. It is used in:
	- [MADFactory721.setMarket(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L520-L528)
	- [MADFactory721._isMarket()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L766-L773)


## Example / POC

## Recommendations

---

_Item 5 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.minOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L70) is never initialized. It is used in:
	- [MADMarketplace721.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L485-L519)
	- [MADMarketplace721._makeOrderChecks(uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1098-L1137)


## Example / POC

## Recommendations

---

_Item 6 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.feeSelector](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L67-L68) is never initialized. It is used in:
	- [MADMarketplace721.buy(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L263-L348)
	- [MADMarketplace721.claim(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L353-L416)
	- [MADMarketplace721._feeResolver(uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1034-L1054)


## Example / POC

## Recommendations

---

_Item 7 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.minBidValue](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L73) is never initialized. It is used in:
	- [MADMarketplace721.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L485-L519)
	- [MADMarketplace721._bidChecks(uint8,uint256,address,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1163-L1219)


## Example / POC

## Recommendations

---

_Item 8 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L75) is never initialized. It is used in:
	- [MADMarketplace721.setRecipient(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L544-L559)
	- [MADMarketplace721._intPath(Types.Order721,uint256,bytes32,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L851-L918)
	- [MADMarketplace721._extPath0(Types.Order721,uint256,bytes32,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L920-L986)
	- [MADMarketplace721._extPath1(Types.Order721,uint256,bytes32,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L988-L1032)


## Example / POC

## Recommendations

---

_Item 9 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.MADFactory721](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L76) is never initialized. It is used in:
	- [MADMarketplace721.buy(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L263-L348)
	- [MADMarketplace721.claim(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L353-L416)
	- [MADMarketplace721.setFactory(FactoryVerifier)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L451-L460)


## Example / POC

## Recommendations

---

_Item 10 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace721.minAuctionIncrement](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L72) is never initialized. It is used in:
	- [MADMarketplace721.bid(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L169-L258)
	- [MADMarketplace721.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L485-L519)


## Example / POC

## Recommendations

---

_Item 11 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.minAuctionIncrement](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L71) is never initialized. It is used in:
	- [MADMarketplace1155.bid(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L190-L276)
	- [MADMarketplace1155.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L507-L541)


## Example / POC

## Recommendations

---

_Item 12 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.minOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L70) is never initialized. It is used in:
	- [MADMarketplace1155.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L507-L541)
	- [MADMarketplace1155._makeOrderChecks(uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1170-L1209)


## Example / POC

## Recommendations

---

_Item 13 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.MADFactory1155](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L76) is never initialized. It is used in:
	- [MADMarketplace1155.buy(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L281-L361)
	- [MADMarketplace1155.claim(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L366-L427)
	- [MADMarketplace1155.setFactory(FactoryVerifier)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L471-L480)


## Example / POC

## Recommendations

---

_Item 14 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADFactory721.signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L82) is never initialized. It is used in:
	- [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497)
	- [MADFactory721.setSigner(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L544-L552)


## Example / POC

## Recommendations

---

_Item 15 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L75) is never initialized. It is used in:
	- [MADMarketplace1155.setRecipient(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L571-L586)
	- [MADMarketplace1155._intPath(Types.Order1155,uint256,bytes32,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L896-L970)
	- [MADMarketplace1155._extPath0(Types.Order1155,uint256,bytes32,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L972-L1047)
	- [MADMarketplace1155._extPath1(Types.Order1155,uint256,bytes32,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1049-L1100)


## Example / POC

## Recommendations

---

_Item 16 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.maxOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L73) is never initialized. It is used in:
	- [MADMarketplace1155.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L507-L541)
	- [MADMarketplace1155._makeOrderChecks(uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1170-L1209)


## Example / POC

## Recommendations

---

_Item 17 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADRouter1155.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L50) is never initialized. It is used in:
	- [MADRouter1155.setRecipient(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L107-L115)
	- [MADRouter1155.withdraw(address,ERC20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L487-L555)


## Example / POC

## Recommendations

---

_Item 18 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.feeSelector](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L67-L68) is never initialized. It is used in:
	- [MADMarketplace1155.buy(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L281-L361)
	- [MADMarketplace1155.claim(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L366-L427)
	- [MADMarketplace1155._feeResolver(uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1102-L1126)


## Example / POC

## Recommendations

---

_Item 19 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADMarketplace1155.minBidValue](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L72) is never initialized. It is used in:
	- [MADMarketplace1155.updateSettings(uint256,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L507-L541)
	- [MADMarketplace1155._bidChecks(uint8,uint256,address,uint256,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1235-L1291)


## Example / POC

## Recommendations

---

_Item 20 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADFactory1155.signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L82) is never initialized. It is used in:
	- [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485)
	- [MADFactory1155.setSigner(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L531-L539)


## Example / POC

## Recommendations

---
# divide-before-multiply

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADMarketplace721.getCurrentPrice(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1287-L1353) performs a multiplication on the result of a division:
	- [_tick_getCurrentPrice_asm_0 = _startPrice_getCurrentPrice_asm_0 - _endPrice_getCurrentPrice_asm_0 / _endTime_getCurrentPrice_asm_0 - _startTime_getCurrentPrice_asm_0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1326-L1329)
	- [price = _startPrice_getCurrentPrice_asm_0 - timestamp()() - _startTime_getCurrentPrice_asm_0 * _tick_getCurrentPrice_asm_0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1330-L1333)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADMarketplace1155.getCurrentPrice(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1359-L1425) performs a multiplication on the result of a division:
	- [_tick_getCurrentPrice_asm_0 = _startPrice_getCurrentPrice_asm_0 - _endPrice_getCurrentPrice_asm_0 / _endTime_getCurrentPrice_asm_0 - _startTime_getCurrentPrice_asm_0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1398-L1401)
	- [price = _startPrice_getCurrentPrice_asm_0 - timestamp()() - _startTime_getCurrentPrice_asm_0 * _tick_getCurrentPrice_asm_0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L1402-L1405)


## Example / POC

## Recommendations

---
# incorrect-equality

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [SplitterImpl.release(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L147-L171) uses a dangerous strict equality:
	- [payment == 0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L154)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [SplitterImpl.release(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L107-L127) uses a dangerous strict equality:
	- [payment == 0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L112)


## Example / POC

## Recommendations

---
# locked-ether

> Items Found: 11

_Item 1 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Minimal](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L14-L308) has payable functions:
	 - [ERC1155Minimal.safeMint(address,uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L73-L83)
	 - [ERC1155Minimal.burn(address,uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L85-L92)
	 - [ERC1155Minimal.publicMint(uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L185-L196)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 2 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [MADMarketplace1155](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L15-L1452) has payable functions:
	 - [MADMarketplace1155.bid(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L190-L276)
	 - [MADMarketplace1155.buy(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L281-L361)
	 - [MADMarketplace1155.receive()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L463)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 3 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Basic](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L17-L579) has payable functions:
	 - [ERC1155Basic.mintTo(address,uint256,uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L142-L171)
	 - [ERC1155Basic.mintBatchTo(address,uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L173-L201)
	 - [ERC1155Basic.burn(address[],uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L203-L231)
	 - [ERC1155Basic.burnBatch(address,uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L233-L260)
	 - [ERC1155Basic.mint(uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L344-L373)
	 - [ERC1155Basic.mintBatch(uint256[],uint256[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L375-L415)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 4 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [SplitterImpl](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L27-L297) has payable functions:
	 - [SplitterImpl.constructor(address[],uint256[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L58-L78)
	 - [SplitterImpl.receive()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L92-L98)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 5 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Lazy](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L18-L555) has payable functions:
	 - [ERC721Lazy.burn(uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L131-L157)
	 - [ERC721Lazy.lazyMint(Types.Voucher,uint8,bytes32,bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L246-L276)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 6 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Minimal](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L15-L311) has payable functions:
	 - [ERC721Minimal.safeMint(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L77-L86)
	 - [ERC721Minimal.burn(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L88-L95)
	 - [ERC721Minimal.publicMint()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L188-L199)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 7 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Whitelist](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L18-L669) has payable functions:
	 - [ERC721Whitelist.burn(uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L267-L291)
	 - [ERC721Whitelist.mintToCreator(uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L293-L317)
	 - [ERC721Whitelist.giftTokens(address[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L321-L349)
	 - [ERC721Whitelist.mint(uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L434-L460)
	 - [ERC721Whitelist.whitelistMint(uint8,bytes32[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L463-L495)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 8 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Lazy](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L18-L662) has payable functions:
	 - [ERC1155Lazy.lazyMint(Types.Voucher,uint8,bytes32,bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L117-L151)
	 - [ERC1155Lazy.lazyMintBatch(Types.UserBatch,uint8,bytes32,bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L154-L195)
	 - [ERC1155Lazy.burn(address[],uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L222-L252)
	 - [ERC1155Lazy.burnBatch(address,uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L254-L280)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 9 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [MADMarketplace721](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L15-L1380) has payable functions:
	 - [MADMarketplace721.bid(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L169-L258)
	 - [MADMarketplace721.buy(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L263-L348)
	 - [MADMarketplace721.receive()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L443)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 10 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC1155Whitelist](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L19-L963) has payable functions:
	 - [ERC1155Whitelist.burn(address[],uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L286-L313)
	 - [ERC1155Whitelist.burnBatch(address,uint256[],uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L316-L341)
	 - [ERC1155Whitelist.mintToCreator(uint256,uint256[],uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L344-L378)
	 - [ERC1155Whitelist.mintBatchToCreator(uint256[],uint256[],uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L381-L418)
	 - [ERC1155Whitelist.giftTokens(address[],uint256[],uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L421-L465)
	 - [ERC1155Whitelist.mint(uint256,uint256[],uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L550-L583)
	 - [ERC1155Whitelist.mintBatch(uint256[],uint256[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L586-L626)
	 - [ERC1155Whitelist.whitelistMint(uint8,uint256[],uint256,bytes32[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L629-L672)
	 - [ERC1155Whitelist.whitelistMintBatch(uint256[],uint256[],bytes32[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L675-L717)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---

_Item 11 / 11_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 Contract locking ether found:
	Contract [ERC721Basic](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L17-L447) has payable functions:
	 - [ERC721Basic.mintTo(address,uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L146-L169)
	 - [ERC721Basic.burn(uint256[],address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L171-L197)
	 - [ERC721Basic.mint(uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L281-L307)
	But does not have a function to withdraw the ether


## Example / POC

## Recommendations

---
# reentrancy-no-eth

> Items Found: 7

_Item 1 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385-L395)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_2)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L398)
	[MADFactory1155.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L68) can be used in cross function reentrancies:
	- [MADFactory1155._userRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L795-L806)
	- [MADFactory1155.creatorAuth(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L686-L708)
	- [MADFactory1155.getIDsLength(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L562-L568)
	- [MADFactory1155.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L68)


## Example / POC

## Recommendations

---

_Item 2 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L419-L429)
	- [(tokenSalt,deployed) = ERC1155LazyDeployer._1155LazyDeploy(_tokenSalt,_uri,_splitter,router,signer,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L453-L462)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_8)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L465)
	[MADFactory1155.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L68) can be used in cross function reentrancies:
	- [MADFactory1155._userRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L795-L806)
	- [MADFactory1155.creatorAuth(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L686-L708)
	- [MADFactory1155.getIDsLength(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L562-L568)
	- [MADFactory1155.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L68)


## Example / POC

## Recommendations

---

_Item 3 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L427-L439)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_5)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L442)
	[MADFactory721.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L68) can be used in cross function reentrancies:
	- [MADFactory721._userRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L809-L820)
	- [MADFactory721.creatorAuth(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L700-L722)
	- [MADFactory721.getIDsLength(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L575-L581)
	- [MADFactory721.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L68)


## Example / POC

## Recommendations

---

_Item 4 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L427-L439)
	- [(tokenSalt,deployed) = ERC721LazyDeployer._721LazyDeploy(_tokenSalt,_name,_symbol,_baseURI,_splitter,router,signer,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L463-L474)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_8)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L477)
	[MADFactory721.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L68) can be used in cross function reentrancies:
	- [MADFactory721._userRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L809-L820)
	- [MADFactory721.creatorAuth(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L700-L722)
	- [MADFactory721.getIDsLength(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L575-L581)
	- [MADFactory721.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L68)


## Example / POC

## Recommendations

---

_Item 5 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391-L403)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_2)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L406)
	[MADFactory721.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L68) can be used in cross function reentrancies:
	- [MADFactory721._userRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L809-L820)
	- [MADFactory721.creatorAuth(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L700-L722)
	- [MADFactory721.getIDsLength(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L575-L581)
	- [MADFactory721.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L68)


## Example / POC

## Recommendations

---

_Item 6 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L419-L429)
	State variables written after the call(s):
	- [userTokens[tx.origin].push(colId_scope_5)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L432)
	[MADFactory1155.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L68) can be used in cross function reentrancies:
	- [MADFactory1155._userRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L795-L806)
	- [MADFactory1155.creatorAuth(address,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L686-L708)
	- [MADFactory1155.getIDsLength(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L562-L568)
	- [MADFactory1155.userTokens](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L68)


## Example / POC

## Recommendations

---

_Item 7 / 7_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 Reentrancy in [ERC1155Whitelist.whitelistMint(uint8,uint256[],uint256,bytes32[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L629-L672):
	External calls:
	- [_mint(msg.sender,_incrementCounter(balances[i]),balances[i],)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L650-L655)
		- [require(bool,string)(ERC1155TokenReceiver(to).onERC1155Received(msg.sender,address(0),id,amount,data) == ERC1155TokenReceiver.onERC1155Received.selector,UNSAFE_RECIPIENT)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Base/ERC1155B.sol#L250-L262)
	State variables written after the call(s):
	- [whitelistMinted += balanceTotal](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L662)
	[ERC1155Whitelist.whitelistMinted](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L81) can be used in cross function reentrancies:
	- [ERC1155Whitelist.whitelistMinted](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L81)


## Example / POC

## Recommendations

---
# tx-origin

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.creatorCheck(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L711-L734) uses tx.origin for authorization: [creator == origin()()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L725-L727)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.creatorCheck(bytes32)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L725-L748) uses tx.origin for authorization: [creator == origin()()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L739-L741)


## Example / POC

## Recommendations

---
# tautology

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [Counters.decrement(Counters.Counter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/utils/Counters.sol#L46-L56) contains a tautology or contradiction:
	- [! _val_decrement_asm_0 | _val_decrement_asm_0 < 0x00](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/utils/Counters.sol#L49-L53)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [Counters.decrement(Counters.Counter,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/utils/Counters.sol#L58-L74) contains a tautology or contradiction:
	- [! _val_decrement_asm_0 | _val_decrement_asm_0 < 0x00 | _val_decrement_asm_0 - amount < 0x00](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/utils/Counters.sol#L64-L71)


## Example / POC

## Recommendations

---
# uninitialized-local

> Items Found: 52

_Item 1 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L171) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 2 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Lazy.lazyMint(Types.Voucher,uint8,bytes32,bytes32).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L268) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 3 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L492) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 4 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Basic.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L254) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 5 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L224) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 6 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).tokenSalt_scope_3](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L427) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 7 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L168) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 8 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L337) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 9 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Basic._sumAmounts(uint256[]).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L436) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 10 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Basic.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L224) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 11 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy.lazyMint(Types.Voucher,uint8,bytes32,bytes32).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L139) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 12 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L297) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 13 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L131) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 14 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L532) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 15 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).tokenSalt_scope_0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 16 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L118) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 17 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L214) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 18 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).tokenSalt_scope_3](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L419) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 19 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L376) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 20 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Basic.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L214) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 21 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).deployed_scope_4](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L419) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 22 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L128) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 23 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L416) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 24 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Basic.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L264) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 25 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).deployed_scope_1](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 26 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).tokenSalt_scope_0](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 27 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).deployed_scope_7](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L463) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 28 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy.lazyMintBatch(Types.UserBatch,uint8,bytes32,bytes32).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L176) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 29 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L522) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 30 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy._userMint(uint256,uint256[],address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L508) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 31 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L161) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 32 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).deployed_scope_1](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 33 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L406) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 34 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [SplitterImpl.constructor(address[],uint256[]).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L70) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 35 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L158) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 36 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L366) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 37 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).tokenSalt_scope_6](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L453) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 38 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L174) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 39 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L287) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 40 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L347) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 41 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [SplitterImpl.releaseAll().i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/splitter/SplitterImpl.sol#L132) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 42 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).tokenSalt_scope_6](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L463) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 43 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L482) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 44 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L121) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 45 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdrawERC20(ERC20,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L327) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 46 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L307) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 47 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).deployed_scope_7](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L453) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 48 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256).deployed_scope_4](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L427) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 49 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdrawERC20(ERC20,address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L317) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 50 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Lazy._userMint(uint256,address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L389) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 51 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdraw(address).j](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L184) is a local variable never initialized


## Example / POC

## Recommendations

---

_Item 52 / 52_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdraw(address).i](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L277) is a local variable never initialized


## Example / POC

## Recommendations

---
# unused-return

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADRouter721._tokenRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L482-L490) ignores return value by [MADFactory721.creatorCheck(colID)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L488)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** Medium

**Likelihood:** Medium

## Description

 [MADRouter1155._tokenRender(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L595-L603) ignores return value by [MADFactory1155.creatorCheck(colID)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L601)


## Example / POC

## Recommendations

---
# write-after-write

> Items Found: 2

_Item 1 / 2_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [MADRouter1155.feeLookup(bytes4).fee](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L568) is written in both
	[fee = sload(uint256)(feeBurn)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L581)
	[fee = 0x00](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L584)


## Example / POC

## Recommendations

---

_Item 2 / 2_

## Severity

**Impact:** Medium

**Likelihood:** High

## Description

 [MADRouter721.feeLookup(bytes4).fee](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L455) is written in both
	[fee = sload(uint256)(feeBurn)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L468)
	[fee = 0x00](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L471)


## Example / POC

## Recommendations

---
# events-maths

> Items Found: 4

_Item 1 / 4_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.whitelistMint(uint8,uint256[],uint256,bytes32[])](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L629-L672) should emit an event for: 
	- [whitelistMinted += balanceTotal](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L662) 


## Example / POC

## Recommendations

---

_Item 2 / 4_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.mintToCreator(uint256,uint256[],uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L344-L378) should emit an event for: 
	- [freeSupply += balanceTotal](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L359) 


## Example / POC

## Recommendations

---

_Item 3 / 4_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.mintBatchToCreator(uint256[],uint256[],uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L381-L418) should emit an event for: 
	- [freeSupply += balanceTotal](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L400) 


## Example / POC

## Recommendations

---

_Item 4 / 4_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.giftTokens(address[],uint256[],uint256,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L421-L465) should emit an event for: 
	- [freeSupply += amountGifted](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L443) 


## Example / POC

## Recommendations

---
# missing-zero-check

> Items Found: 7

_Item 1 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.constructor(string,SplitterImpl,uint96,address,address,ERC20)._signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L90) lacks a zero-check on :
		- [signer = _signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L95)


## Example / POC

## Recommendations

---

_Item 2 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.setSigner(address)._signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L201) lacks a zero-check on :
		- [signer = _signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L202)


## Example / POC

## Recommendations

---

_Item 3 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.constructor(string,string,string,SplitterImpl,uint96,address,address,ERC20)._signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L86) lacks a zero-check on :
		- [signer = _signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L91)


## Example / POC

## Recommendations

---

_Item 4 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.setSigner(address)._signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L108) lacks a zero-check on :
		- [signer = _signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L109)


## Example / POC

## Recommendations

---

_Item 5 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADFactory1155.constructor(address,address,address,address)._router](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L94) lacks a zero-check on :
		- [router = _router](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L105)


## Example / POC

## Recommendations

---

_Item 6 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [Owned.setOwner(address).newOwner](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/auth/Owned.sol#L44) lacks a zero-check on :
		- [owner = newOwner](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/auth/Owned.sol#L49)


## Example / POC

## Recommendations

---

_Item 7 / 7_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADFactory721.constructor(address,address,address,address)._router](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L94) lacks a zero-check on :
		- [router = _router](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L105)


## Example / POC

## Recommendations

---
# calls-loop

> Items Found: 36

_Item 1 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L262-L297) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L279)


## Example / POC

## Recommendations

---

_Item 2 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L106-L141) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L124)


## Example / POC

## Recommendations

---

_Item 3 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L504-L543) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L524)


## Example / POC

## Recommendations

---

_Item 4 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADMarketplace1155._withdrawOutbid(address,ERC20,uint256,uint160)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L688-L740) has external calls inside a loop: [amountOut = swapRouter.exactInputSingle(params)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L736-L738)


## Example / POC

## Recommendations

---

_Item 5 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L299-L338) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L319)


## Example / POC

## Recommendations

---

_Item 6 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721._safeMint(address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Base/ERC721.sol#L251-L268) has external calls inside a loop: [require(bool,string)(to.code.length == 0 || ERC721TokenReceiver(to).onERC721Received(msg.sender,address(0),id,) == ERC721TokenReceiver.onERC721Received.selector,UNSAFE_RECIPIENT)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Base/ERC721.sol#L257-L267)


## Example / POC

## Recommendations

---

_Item 7 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L106-L141) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L123)


## Example / POC

## Recommendations

---

_Item 8 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L196-L235) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L217)


## Example / POC

## Recommendations

---

_Item 9 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L319-L358) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L339)


## Example / POC

## Recommendations

---

_Item 10 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L103-L138) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L120)


## Example / POC

## Recommendations

---

_Item 11 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L199-L234) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L217)


## Example / POC

## Recommendations

---

_Item 12 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L388-L427) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L408)


## Example / POC

## Recommendations

---

_Item 13 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L388-L427) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L409)


## Example / POC

## Recommendations

---

_Item 14 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L319-L358) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L340)


## Example / POC

## Recommendations

---

_Item 15 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L103-L138) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L121)


## Example / POC

## Recommendations

---

_Item 16 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L199-L234) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L216)


## Example / POC

## Recommendations

---

_Item 17 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L236-L275) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L257)


## Example / POC

## Recommendations

---

_Item 18 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L351-L386) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L368)


## Example / POC

## Recommendations

---

_Item 19 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Basic.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L236-L275) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L256)


## Example / POC

## Recommendations

---

_Item 20 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L143-L182) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L163)


## Example / POC

## Recommendations

---

_Item 21 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L159-L194) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L177)


## Example / POC

## Recommendations

---

_Item 22 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L140-L179) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L160)


## Example / POC

## Recommendations

---

_Item 23 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155B._mint(address,uint256,uint256,bytes)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Base/ERC1155B.sol#L233-L264) has external calls inside a loop: [require(bool,string)(ERC1155TokenReceiver(to).onERC1155Received(msg.sender,address(0),id,amount,data) == ERC1155TokenReceiver.onERC1155Received.selector,UNSAFE_RECIPIENT)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Base/ERC1155B.sol#L250-L262)


## Example / POC

## Recommendations

---

_Item 24 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L262-L297) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L280)


## Example / POC

## Recommendations

---

_Item 25 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L159-L194) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L176)


## Example / POC

## Recommendations

---

_Item 26 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [MADMarketplace721._withdrawOutbid(address,ERC20,uint256,uint160)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L667-L719) has external calls inside a loop: [amountOut = swapRouter.exactInputSingle(params)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L715-L717)


## Example / POC

## Recommendations

---

_Item 27 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L504-L543) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L525)


## Example / POC

## Recommendations

---

_Item 28 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L282-L317) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L299)


## Example / POC

## Recommendations

---

_Item 29 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Basic.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L299-L338) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L320)


## Example / POC

## Recommendations

---

_Item 30 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Whitelist.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L351-L386) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L369)


## Example / POC

## Recommendations

---

_Item 31 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Lazy.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L282-L317) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L300)


## Example / POC

## Recommendations

---

_Item 32 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Minimal.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L143-L182) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L164)


## Example / POC

## Recommendations

---

_Item 33 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC721Lazy.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L196-L235) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L216)


## Example / POC

## Recommendations

---

_Item 34 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Minimal.withdrawERC20(ERC20,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L140-L179) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L161)


## Example / POC

## Recommendations

---

_Item 35 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L467-L502) has external calls inside a loop: [share = splitter._shares(addr)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L485)


## Example / POC

## Recommendations

---

_Item 36 / 36_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 [ERC1155Whitelist.withdraw(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L467-L502) has external calls inside a loop: [addr = splitter._payees(i)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L484)


## Example / POC

## Recommendations

---
# reentrancy-benign

> Items Found: 16

_Item 1 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L419-L429)
	State variables written after the call(s):
	- [colInfo[colId_scope_5] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Whitelist,tokenSalt_scope_3,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L434-L440)


## Example / POC

## Recommendations

---

_Item 2 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	State variables written after the call(s):
	- [colInfo[colId] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Minimal,tokenSalt,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L372-L378)
	- [userTokens[tx.origin].push(colId)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L370)


## Example / POC

## Recommendations

---

_Item 3 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter_scope_5 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_3,_shares_scope_4)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L234-L238)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_5] = Types.SplitterConfig(_splitter_scope_5,splitterSalt,address(0),_project,0,_projectShare,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L240-L249)


## Example / POC

## Recommendations

---

_Item 4 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter_scope_5 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_3,_shares_scope_4)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L230-L234)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_5] = Types.SplitterConfig(_splitter_scope_5,splitterSalt,address(0),_project,0,_projectShare,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L236-L245)


## Example / POC

## Recommendations

---

_Item 5 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter_scope_8 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_6,_shares_scope_7)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L277-L281)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_8] = Types.SplitterConfig(_splitter_scope_8,splitterSalt,_ambassador,_project,_ambShare,_projectShare,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L283-L292)


## Example / POC

## Recommendations

---

_Item 6 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter_scope_8 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_6,_shares_scope_7)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L281-L285)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_8] = Types.SplitterConfig(_splitter_scope_8,splitterSalt,_ambassador,_project,_ambShare,_projectShare,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L287-L296)


## Example / POC

## Recommendations

---

_Item 7 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L427-L439)
	State variables written after the call(s):
	- [colInfo[colId_scope_5] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Whitelist,tokenSalt_scope_3,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L444-L450)


## Example / POC

## Recommendations

---

_Item 8 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385-L395)
	State variables written after the call(s):
	- [colInfo[colId_scope_2] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Basic,tokenSalt_scope_0,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L400-L406)


## Example / POC

## Recommendations

---

_Item 9 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees,_shares)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L152-L156)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter] = Types.SplitterConfig(_splitter,splitterSalt,address(0),address(0),0,0,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L158-L167)


## Example / POC

## Recommendations

---

_Item 10 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391-L403)
	State variables written after the call(s):
	- [colInfo[colId_scope_2] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Basic,tokenSalt_scope_0,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L408-L414)


## Example / POC

## Recommendations

---

_Item 11 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	- [(tokenSalt,deployed) = ERC1155BasicDeployer._1155BasicDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L385-L395)
	- [(tokenSalt,deployed) = ERC1155WhitelistDeployer._1155WhitelistDeploy(_tokenSalt,_uri,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L419-L429)
	- [(tokenSalt,deployed) = ERC1155LazyDeployer._1155LazyDeploy(_tokenSalt,_uri,_splitter,router,signer,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L453-L462)
	State variables written after the call(s):
	- [colInfo[colId_scope_8] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Lazy,tokenSalt_scope_6,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L467-L473)


## Example / POC

## Recommendations

---

_Item 12 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter_scope_2 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_0,_shares_scope_1)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L195-L199)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_2] = Types.SplitterConfig(_splitter_scope_2,splitterSalt,_ambassador,address(0),_ambShare,0,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L201-L210)


## Example / POC

## Recommendations

---

_Item 13 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L130-L310):
	External calls:
	- [_splitter_scope_2 = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees_scope_0,_shares_scope_1)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L191-L195)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter_scope_2] = Types.SplitterConfig(_splitter_scope_2,splitterSalt,_ambassador,address(0),_ambShare,0,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L197-L206)


## Example / POC

## Recommendations

---

_Item 14 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.splitterCheck(string,address,address,uint256,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L134-L314):
	External calls:
	- [_splitter = SplitterDeployer._SplitterDeploy(_splitterSalt,_payees,_shares)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L156-L160)
	State variables written after the call(s):
	- [splitterInfo[tx.origin][_splitter] = Types.SplitterConfig(_splitter,splitterSalt,address(0),address(0),0,0,true)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L162-L171)


## Example / POC

## Recommendations

---

_Item 15 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory1155.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L330-L485):
	External calls:
	- [(tokenSalt,deployed) = ERC1155MinimalDeployer._1155MinimalDeploy(_tokenSalt,_uri,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L352-L361)
	State variables written after the call(s):
	- [colInfo[colId] = Types.Collection1155(tx.origin,Types.ERC1155Type.ERC1155Minimal,tokenSalt,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L366-L372)
	- [userTokens[tx.origin].push(colId)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L364)


## Example / POC

## Recommendations

---

_Item 16 / 16_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADFactory721.createCollection(uint8,string,string,string,uint256,uint256,string,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L334-L497):
	External calls:
	- [(tokenSalt,deployed) = ERC721MinimalDeployer._721MinimalDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L356-L367)
	- [(tokenSalt,deployed) = ERC721BasicDeployer._721BasicDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L391-L403)
	- [(tokenSalt,deployed) = ERC721WhitelistDeployer._721WhitelistDeploy(_tokenSalt,_name,_symbol,_baseURI,_price,_maxSupply,_splitter,router,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L427-L439)
	- [(tokenSalt,deployed) = ERC721LazyDeployer._721LazyDeploy(_tokenSalt,_name,_symbol,_baseURI,_splitter,router,signer,_royalty,erc20)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L463-L474)
	State variables written after the call(s):
	- [colInfo[colId_scope_8] = Types.Collection721(tx.origin,Types.ERC721Type.ERC721Lazy,tokenSalt_scope_6,block.number,_splitter)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L479-L485)


## Example / POC

## Recommendations

---
# reentrancy-events

> Items Found: 5

_Item 1 / 5_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._extPath1(Types.Order721,uint256,bytes32,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L988-L1032):
	External calls:
	- [_order.token.safeTransferFrom(address(this),_to,_order.tokenId)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1019-L1023)
	Event emitted after the call(s):
	- [Claim(_order.token,_order.tokenId,_orderId,_order.seller,_to,_price)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L1024-L1031)


## Example / POC

## Recommendations

---

_Item 2 / 5_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace1155._withdrawOutbid(address,ERC20,uint256,uint160)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L688-L740):
	External calls:
	- [amountOut = swapRouter.exactInputSingle(params)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L736-L738)
	Event emitted after the call(s):
	- [WithdrawOutbid(_sender,address(_token),amountOut)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L739)


## Example / POC

## Recommendations

---

_Item 3 / 5_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._intPath(Types.Order721,uint256,bytes32,address,uint256)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L851-L918):
	External calls:
	- [_order.token.safeTransferFrom(address(this),_to,_order.tokenId)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L905-L909)
	Event emitted after the call(s):
	- [Claim(_order.token,_order.tokenId,_orderId,_order.seller,_to,_price)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L910-L917)


## Example / POC

## Recommendations

---

_Item 4 / 5_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._extPath0(Types.Order721,uint256,bytes32,address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L920-L986):
	External calls:
	- [_order.token.safeTransferFrom(address(this),_to,_order.tokenId)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L973-L977)
	Event emitted after the call(s):
	- [Claim(_order.token,_order.tokenId,_orderId,_order.seller,_to,_price)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L978-L985)


## Example / POC

## Recommendations

---

_Item 5 / 5_

## Severity

**Impact:** Low

**Likelihood:** Medium

## Description

 Reentrancy in [MADMarketplace721._withdrawOutbid(address,ERC20,uint256,uint160)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L667-L719):
	External calls:
	- [amountOut = swapRouter.exactInputSingle(params)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L715-L717)
	Event emitted after the call(s):
	- [WithdrawOutbid(_sender,address(_token),amountOut)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L718)


## Example / POC

## Recommendations

---
# constable-states

> Items Found: 27

_Item 1 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.feeVal3](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L47) should be constant 


## Example / POC

## Recommendations

---

_Item 2 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.feeVal2](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L46) should be constant 


## Example / POC

## Recommendations

---

_Item 3 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.minAuctionIncrement](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L72) should be constant 


## Example / POC

## Recommendations

---

_Item 4 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.minAuctionIncrement](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L71) should be constant 


## Example / POC

## Recommendations

---

_Item 5 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory1155.market](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L79) should be constant 


## Example / POC

## Recommendations

---

_Item 6 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.minBidValue](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L72) should be constant 


## Example / POC

## Recommendations

---

_Item 7 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory721.market](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L79) should be constant 


## Example / POC

## Recommendations

---

_Item 8 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.feeBurn](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L47) should be constant 


## Example / POC

## Recommendations

---

_Item 9 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.feeMint](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L44) should be constant 


## Example / POC

## Recommendations

---

_Item 10 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.feeVal3](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L47) should be constant 


## Example / POC

## Recommendations

---

_Item 11 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.feeBurn](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L47) should be constant 


## Example / POC

## Recommendations

---

_Item 12 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L50) should be constant 


## Example / POC

## Recommendations

---

_Item 13 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.MADFactory1155](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L76) should be constant 


## Example / POC

## Recommendations

---

_Item 14 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.MADFactory721](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L76) should be constant 


## Example / POC

## Recommendations

---

_Item 15 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L56) should be constant 


## Example / POC

## Recommendations

---

_Item 16 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.feeVal2](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L46) should be constant 


## Example / POC

## Recommendations

---

_Item 17 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.baseURI](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L51) should be constant 


## Example / POC

## Recommendations

---

_Item 18 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.minOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L70) should be constant 


## Example / POC

## Recommendations

---

_Item 19 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.feeMint](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L44) should be constant 


## Example / POC

## Recommendations

---

_Item 20 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L75) should be constant 


## Example / POC

## Recommendations

---

_Item 21 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory1155.signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L82) should be constant 


## Example / POC

## Recommendations

---

_Item 22 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.recipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L75) should be constant 


## Example / POC

## Recommendations

---

_Item 23 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory721.signer](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L82) should be constant 


## Example / POC

## Recommendations

---

_Item 24 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.maxOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L73) should be constant 


## Example / POC

## Recommendations

---

_Item 25 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.minBidValue](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L73) should be constant 


## Example / POC

## Recommendations

---

_Item 26 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace1155.minOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace1155.sol#L70) should be constant 


## Example / POC

## Recommendations

---

_Item 27 / 27_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADMarketplace721.maxOrderDuration](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADMarketplace721.sol#L71) should be constant 


## Example / POC

## Recommendations

---
# immutable-states

> Items Found: 37

_Item 1 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L39) should be immutable 


## Example / POC

## Recommendations

---

_Item 2 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.MADFactory1155](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L32) should be immutable 


## Example / POC

## Recommendations

---

_Item 3 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.price](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L54) should be immutable 


## Example / POC

## Recommendations

---

_Item 4 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L36) should be immutable 


## Example / POC

## Recommendations

---

_Item 5 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.MADFactory721](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L32) should be immutable 


## Example / POC

## Recommendations

---

_Item 6 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.publicPrice](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L61) should be immutable 


## Example / POC

## Recommendations

---

_Item 7 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Minimal.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L26) should be immutable 


## Example / POC

## Recommendations

---

_Item 8 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.maxFeeMint](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L53) should be immutable 


## Example / POC

## Recommendations

---

_Item 9 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L36) should be immutable 


## Example / POC

## Recommendations

---

_Item 10 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory1155.router](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L76) should be immutable 


## Example / POC

## Recommendations

---

_Item 11 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.maxSupply](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L55) should be immutable 


## Example / POC

## Recommendations

---

_Item 12 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC2981._royaltyFee](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/common/ERC2981.sol#L10) should be immutable 


## Example / POC

## Recommendations

---

_Item 13 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L33) should be immutable 


## Example / POC

## Recommendations

---

_Item 14 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADFactory721.router](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory721.sol#L76) should be immutable 


## Example / POC

## Recommendations

---

_Item 15 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Minimal.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L29) should be immutable 


## Example / POC

## Recommendations

---

_Item 16 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Minimal.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L28) should be immutable 


## Example / POC

## Recommendations

---

_Item 17 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.maxFeeBurn](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L53) should be immutable 


## Example / POC

## Recommendations

---

_Item 18 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L33) should be immutable 


## Example / POC

## Recommendations

---

_Item 19 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Lazy.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L52) should be immutable 


## Example / POC

## Recommendations

---

_Item 20 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L37) should be immutable 


## Example / POC

## Recommendations

---

_Item 21 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter1155.maxFeeBurn](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter1155.sol#L56) should be immutable 


## Example / POC

## Recommendations

---

_Item 22 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [Owned.owner](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/auth/Owned.sol#L22) should be immutable 


## Example / POC

## Recommendations

---

_Item 23 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC2981._royaltyRecipient](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/common/ERC2981.sol#L12) should be immutable 


## Example / POC

## Recommendations

---

_Item 24 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.maxSupply](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L57) should be immutable 


## Example / POC

## Recommendations

---

_Item 25 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Minimal.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L31) should be immutable 


## Example / POC

## Recommendations

---

_Item 26 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.maxSupply](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L57) should be immutable 


## Example / POC

## Recommendations

---

_Item 27 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Minimal.price](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Minimal.sol#L32) should be immutable 


## Example / POC

## Recommendations

---

_Item 28 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Whitelist.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Whitelist.sol#L34) should be immutable 


## Example / POC

## Recommendations

---

_Item 29 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Lazy.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Lazy.sol#L49) should be immutable 


## Example / POC

## Recommendations

---

_Item 30 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Lazy.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L58) should be immutable 


## Example / POC

## Recommendations

---

_Item 31 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Minimal.price](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Minimal.sol#L34) should be immutable 


## Example / POC

## Recommendations

---

_Item 32 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [MADRouter721.maxFeeMint](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L50) should be immutable 


## Example / POC

## Recommendations

---

_Item 33 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC721Basic.price](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC721/Impl/ERC721Basic.sol#L54) should be immutable 


## Example / POC

## Recommendations

---

_Item 34 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Lazy.splitter](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Lazy.sol#L55) should be immutable 


## Example / POC

## Recommendations

---

_Item 35 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Basic.erc20](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Basic.sol#L36) should be immutable 


## Example / POC

## Recommendations

---

_Item 36 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.publicPrice](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L66) should be immutable 


## Example / POC

## Recommendations

---

_Item 37 / 37_

## Severity

**Impact:** Optimization

**Likelihood:** High

## Description

 [ERC1155Whitelist.maxSupply](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/lib/tokens/ERC1155/Impl/ERC1155Whitelist.sol#L60) should be immutable 


## Example / POC

## Recommendations

---

# ERC Compliance Checks


# Check ERC1155B

`/auditFiles/madnfts-solidity-contracts# slither-check-erc ./contracts/lib/tokens/erc1155/Base/ERC1155B.sol ERC1155B`

## Check functions
```
[ ] totalSupply() is missing
[ ] balanceOf(address) is missing
[ ] transfer(address,uint256) is missing
[ ] transferFrom(address,address,uint256) is missing
[ ] approve(address,uint256) is missing
[ ] allowance(address,address) is missing
[ ] name() is missing (optional)
[ ] symbol() is missing (optional)
[ ] decimals() is missing (optional)

## Check events

[ ] Transfer(address,address,uint256) is missing
[ ] Approval(address,address,uint256) is missing

[ ] ERC1155B is not protected for the ERC20 approval race condition
```

# Check ERC20

`/auditFiles/madnfts-solidity-contracts# slither-check-erc /auditFiles/madnfts-solidity-contracts/contracts/lib/tokens/erc20.sol ERC20`

## Check functions

```
[✓] totalSupply() is present
        [✓] totalSupply() -> (uint256) (correct return type)
        [✓] totalSupply() is view
[✓] balanceOf(address) is present
        [✓] balanceOf(address) -> (uint256) (correct return type)
        [✓] balanceOf(address) is view
[✓] transfer(address,uint256) is present
        [✓] transfer(address,uint256) -> (bool) (correct return type)
        [ ] Must emit be view Transfer(address,address,uint256)
[✓] transferFrom(address,address,uint256) is present
        [✓] transferFrom(address,address,uint256) -> (bool) (correct return type)
        [ ] Must emit be view Transfer(address,address,uint256)
[✓] approve(address,uint256) is present
        [✓] approve(address,uint256) -> (bool) (correct return type)
        [ ] Must emit be view Approval(address,address,uint256)
[✓] allowance(address,address) is present
        [✓] allowance(address,address) -> (uint256) (correct return type)
        [✓] allowance(address,address) is view
        
[ ] name() is missing (optional)
[ ] symbol() is missing (optional)
[ ] decimals() is missing (optional)

```

## Check events

```
[✓] Transfer(address,address,uint256) is present
        [✓] parameter 0 is indexed
        [✓] parameter 1 is indexed
[✓] Approval(address,address,uint256) is present
        [✓] parameter 0 is indexed
        [✓] parameter 1 is indexed


[ ] ERC20 is not protected for the ERC20 approval race condition
```
# Check ERC721

`/auditFiles/madnfts-solidity-contracts# slither-check-erc ./contracts/lib/tokens/erc721/Base/ERC721.sol ERC721`


## Check functions

```
[ ] totalSupply() is missing
[✓] balanceOf(address) is present
        [✓] balanceOf(address) -> (uint256) (correct return type)
        [✓] balanceOf(address) is view
[ ] transfer(address,uint256) is missing
[✓] transferFrom(address,address,uint256) is present
        [ ] transferFrom(address,address,uint256) -> () should return bool
        [✓] Transfer(address,address,uint256) is emitted
[✓] approve(address,uint256) is present
        [ ] approve(address,uint256) -> () should return bool
        [✓] Approval(address,address,uint256) is emitted
[ ] allowance(address,address) is missing
[✓] name() is present
        [✓] name() -> (string) (correct return type)
        [✓] name() is view
[✓] symbol() is present
        [✓] symbol() -> (string) (correct return type)
        [✓] symbol() is view
[ ] decimals() is missing (optional)
```

## Check events

```
[✓] Transfer(address,address,uint256) is present
        [✓] parameter 0 is indexed
        [✓] parameter 1 is indexed
[✓] Approval(address,address,uint256) is present
        [✓] parameter 0 is indexed
        [✓] parameter 1 is indexed


[ ] ERC721 is not protected for the ERC20 approval race condition
```