# Audit points to discuss with Business.
---


## autoTransferFunds in Marketplace transfers users bids that are not completed.

In a MAD MArketplace auction everyone bids on an item

Tokens from bids are transferred into the contract.

The winning bid will be processed but all the losing bids remain in the contract until the user withdraws.

This autoTransfer feature is an altruistic feature whereby MAD NFT's run a service (according to the code) to periodically transfer any losing bids back to the original wallet.

This is handled automatically by MAD , triggering the function (daily?).

This costs gas and if user count gets high, the automated process may not be able to keep up and the gas costs could be high.

We can send 20 at a time, this is expensive on calls anyway but what about 10,000, 100,000, 1,000,000 users.

It presents a security risk having a private key to execute the calls.

It requires maintanence and periodic funding of the wallet.  If this grows in value,it can become a potential target.

Q. Is this an actual business feature that is required?  This is catering and paying for users that are not interacting with the platform. 

---

## Centralisation / security risks

See [[C-1] - Ownership of Contracts Renders Them Open to Abuse](https://github.com/johnashu/MadNftAudit/blob/main/AuditReport.MD#c-1---ownership-of-contracts-renders-them-open-to-abuse)
