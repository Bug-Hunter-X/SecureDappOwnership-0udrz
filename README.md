# Unprotected Ownership Transfer in DApp

This repository demonstrates a common vulnerability in decentralized applications (DApps) built using Solidity: an unprotected ownership transfer function.  The `transferOwnership` function lacks the necessary access control mechanisms to prevent unauthorized changes to ownership.

The `bug.sol` file contains the vulnerable code. The `solution.sol` file provides a corrected version with the addition of an `onlyOwner` modifier to prevent unauthorized access.

**Vulnerability:**

The `transferOwnership` function can be called by any address, not just the current owner. This allows a malicious actor to steal control of the DApp.

**Solution:**

Implementing an `onlyOwner` modifier restricts access to the `transferOwnership` function to only the current owner of the contract.