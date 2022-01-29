//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// contract to mint nfts and deploy on eth blockchain ERC721 standard
contract NFTCollectible is Ownable, ERC721{

    uint256 public totalSupply=0; //total token minted
    uint256 constant public MAX_AMOUNT = 10000;

// user who is calling method is sender
    constructor() ERC721("NFTName", "abbreviation")
    {
        //create tokens
        for(uint i=0; i<50; i++)
        {
            _safeMint(msg.sender, ++totalSupply);
        }
    }

}
















