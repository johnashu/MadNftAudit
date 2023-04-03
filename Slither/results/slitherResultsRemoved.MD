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



## Reason removed

`recipient` is initialised in the function `setRecipient()` via the constructor. [MADRouter721.sol#L97](https://github.com/madnfts/madnfts-solidity-contracts/blob/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L97)

[MADRouter721.sol#L577](https://github.com/madnfts/madnfts-solidity-contracts/blob/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADRouter721.sol#L577)

```javascript

    /// @dev Setter for public mint fee _recipient.
    /// @dev Function Sighash := ?
    function setRecipient(address _recipient) public onlyOwner {
        require(_recipient != address(0), "Invalid address");

        assembly {
            sstore(recipient.slot, _recipient)
        }

        emit RecipientUpdated(_recipient);
    }

```

---

_Item 2 / 20_

## Severity

**Impact:** High

**Likelihood:** High

## Description

 [MADFactory1155.market](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L79) is never initialized. It is used in:
	- [MADFactory1155.setMarket(address)](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L508-L515)
	- [MADFactory1155._isMarket()](https://github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L752-L759)



## Reason Removed

`market` is initialised in the function `setMarket()` via the constructor. [MADFactory1155.sol#L99](https://github.com/madnfts/madnfts-solidity-contracts/blob/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L99)

[MADFactory1155.sol#L508-L515](https://github.com/madnfts/madnfts-solidity-contracts/blob/c128e6780c557dc8eb432c6545ebc2411b26cbd3/contracts/MADFactory1155.sol#L508-L515)

```javascript

    /// @dev `MADMarketplace` instance setter.
    /// @dev Function Sighash := 
    function setMarket(address _market) public onlyOwner {
        require(_market != address(0), "Invalid address");
        assembly {
            sstore(market.slot, _market)
        }

        emit MarketplaceUpdated(_market);
    }

---


