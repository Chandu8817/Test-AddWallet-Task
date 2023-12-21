// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WalletList {
    address[] Wallets;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    event AddWallet(address wallet);
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this.");
        _;
    }

    function addWallet(address wallet) public onlyOwner {
        require(!isWalletInList(wallet), "already in List");
        Wallets.push(wallet);
        emit AddWallet(wallet);
    }

    function isWalletInList(address wallet) public view returns (bool) {
        for (uint256 i = 0; i < Wallets.length; ) {
            if (wallet == Wallets[i]) {
                return true;
            }
            unchecked {
                i++;
            }
        }
        return false;
    }
}
