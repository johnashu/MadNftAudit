# Contracts Deployed - Not Verified.  

We need to ensure that verification process is including for deployment.

# Withdaw Methods

- Discussed in audit already.

# Salt known

Non- issues no self destruct is used.


# Signatures 

Check possible attack vectors.

https://dacian.me/signature-replay-attacks?s=35

https://twitter.com/danielvf/status/1563168400234258433?t=e_Ze4iXU_hbq5cGtAXqqWA&s=08

https://t.co/yqdk7SrRdG


# Auctions

Check calculations in auctions - some findings are in slither analysis but needs a bigger scope.

## Dutch Auction Audit

Audit on the dutch auction protocol for reference.

https://github.com/pashov/audits/blob/master/solo/RollingDutchAuction-security-review.md


## Process

Analysis -> Identify issue -> Add issue to audit -> Fix / test issue -> PR to main MADNFTs (ref issue in PR and code lines) -> merge to MADNFTs Branch -> Update audit with Fix info (PR etc) -> Repeat!