
# MAD NFTs Audit

# Introduction

A time-boxed security review of the **MAD NFTs Market Place** protocol was done by **Maffaz**, with a focus on the security aspects of the application`s implementation.

# Disclaimer

A smart contract security review can never verify the complete absence of vulnerabilities. This is a time, resource and expertise bound effort where I try to find as many vulnerabilities as possible. I can not guarantee 100% security after the review or even if the review will find any problems with your smart contracts.

# About **Maffaz**

John Ashurst, or **Maffaz**, is an independent smart contract security researcher. He does his best to contribute to the blockchain ecosystem and its protocols by putting time and effort into security research.

# About **MAD NFTs**


## Unexpected/Interesting Design choices

- Ownership of NFT`s is always by a centralised router owned by the protocol.


# Threat Model

## Roles & Actors

- ERC721 NFT Contract Owner
- ERC1155 Contract Owner
- Unauthorized User
- Normal User
- Protocol Contract Owners

## Security Interview

**Q:** What in the protocol has value in the market?

**A:** 


## Potential attacker`s goals

- Place any method in the protocol into a state of DoS ???
- Steal another user`s claimable tokens ???
- Exploit bugs in price calculations ???

## Potential ways for the attacker to achieve his goals

- Exploit errors or rounding downs in divisions in price calculations for personal benefit - division error
  
- Achieve ownership of Router / Marketplace and / or Collections of ERC721 / ERC1155

# Severity classification

| Severity               | Impact: High | Impact: Medium | Impact: Low |
| ---------------------- | ------------ | -------------- | ----------- |
| **Likelihood: High**   | Critical     | High           | Medium      |
| **Likelihood: Medium** | High         | Medium         | Low         |
| **Likelihood: Low**    | Medium       | Low            | Low         |

**Impact** - the technical, economic and reputation damage of a successful attack

**Likelihood** - the chance that a particular vulnerability gets discovered and exploited

**Severity** - the overall criticality of the risk

# Security Assessment Summary

**_review commit hash_ - [c128e6780c557dc8eb432c6545ebc2411b26cbd3](https:github.com/madnfts/madnfts-solidity-contracts/tree/c128e6780c557dc8eb432c6545ebc2411b26cbd3)**

### Scope

The following smart contracts were in scope of the audit:

- `MAD.sol`


The following number of issues were found, categorized by their severity: (TBD)

- Critical: x issues 
- High: x issues
- Medium: x issues
- Low: x issues
- Optimization: x issues


# Critical Findings

## Ownership of Contracts Renders Them Open to Abuse

There are security concerns regarding centralised control regarding created contracts access.

The MAD `Factory` contracts control the `Marketplace` and `Router` ownerships as well as the `Signer`.

Protections in place for re-entry and / or ownership exploits on these functions can be overidden by changing ownership to a *malicious* contract.

This can be used to scam and rugpull users or *maliciously* cause undesirable results.

Using `withdraw` as an example and to highlight an example of another attack vector that will be available to any *malicious* user if ownership is not retained by `MAD NFTs`. A Solution is also provided for that attack vector below.

There are high-level protection on functions, such as `withdraw` in the Router contracts (re-entrancy guard).

This is assumed to be the only route for a user to take when creating a collection.

However in the `Factory` Contracts that handle the deployment of new contracts, 
it is possible for the owner to change the `router address` using the function `setRouter`.

Here a *malicious* owner can deploy a new copy of the `router contract` including the demonstrated
attack functions detailed in the Attack contact and more or simply use the ownership to withdraw funds and fees from all contracts to their own address using the functions provided in the `Router` contract.

No further checks are done for the validity of the router when creating new collections and
whatever `router address` is passed to the new contract will be the **owner of that contract**.


## ATTACK VECTOR DEMO - Rentry via safeTransferEth

Rentry via `withdraw` method from the owner can potentially steal funds from `payees`

Withdraw with splitters are located in the following contracts:

- ERC1155Basic.sol
- ERC1155Lazy.sol
- ERC1155Minimal.sol
- ERC1155Whitelist.sol
    
- ERC721Basic.sol
- ERC721Lazy.sol
- ERC721Minimal.sol
- ERC721Whitelist.sol

Although we are focusing here on re-entry via ETH, there are other areas with re-entry risks in `safeTransferFrom()`, `safeMint()` ... .

10 ether is sent to the `MadHackSafeETH` Contract to represent the `balance` of the contract including `fees`

`feeCount` is set to 1 ether in the contract.

The `receive()` function in the Attack contract does a simple calculation to determine when to stop re-entry.

`address(madHackSafeETH).balance >= (startBalance - (startBalance / 2))`

> **NOTE**: This calculation is specific to the amounts in this POC.

A more advanced calculation will be required to `automate` this and clear the contract completely.
OR is may not be possible for certain situations. 
Further investigation is out of scope as the issue is demonstrated as an attack vector.

As we can see by the results, in this instance, the ownerAttacker is only allowed to withdraw 1 ether from the contract.
Using Re-entry, they have managed to obtain 6 out of the 10 ether in the contract.

```bash
Logs:
    Pre: victimSplitter1.balance      : 0
    Pre: victimSplitter2.balance      : 0
    Pre: madHackSafeETH.getbalance    : 10000000000000000000
    Pre: attack.getbalance            : 0

    Post: victimSplitter1.balance     : 1950000000000000000
    Pre: victimSplitter2.balance      : 1950000000000000000
    Post: madHackSafeETH.getbalance   : 100000000000000000
    Post: attack.getbalance           : 6000000000000000000

    Number times Entered              : 6

```

Re-entrancy is further possible via a `payee` attempting the same attack in the same function.


**POC** can be found at: 

- `poc/mocks/safeEthHack.sol` 
- `poc/safeEthMad.t.sol`


## Recommendation

Securing the functions with re-entrancy Guard will protect both attack vectors if the contracts are to be used stand-alone.

## Further recommendations

Allow creators of Collections to retain full ownership of the contract and implement 2FA for Router origin based interactions.

This way, the Contract can be interacted with in a stand-alone fashion  (including transferring ownership) from the owner as well as utilising the MAD NFT Protocol and Marketplace when required.

Users can be reassured that them and ONLY they can interact with their contract at a contract level.

