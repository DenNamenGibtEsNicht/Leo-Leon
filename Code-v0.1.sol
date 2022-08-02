//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Nft is ERC721 {

    using Counters for Counters.Counter;
    Counters.Counter private CurrentTokenID;

    constructor() ERC721 ("TheWorldAroundUs","TWAU") {}

    function mintTo(address recipient)

    public 
    returns (uint256)
    
    {
        CurrentTokenID.increment();
        uint256 newItemId = CurrentTokenID.current();
        _safeMint(recipient, newItemId);
        return newItemId;
    
    }
}


