//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// contract to mint nfts and deploy on eth blockchain ERC721 standard
contract NFTCollectible is Ownable, ERC721{

    uint256 public totalSupply=0; //total token minted
    uint256 constant public MAX_AMOUNT = 10000;
    uint256 constant public MAX_TOKENS_PER_ACCOUNT = 3;
    uint256 constant public LISTING_PRICE = 0.05 ether;

// user who is calling method is sender
    constructor() ERC721("NFTName", "abbreviation")
    {
        //create tokens
        for(uint i=0; i<50; i++)
        {
            _safeMint(msg.sender, ++totalSupply);
        }
    }

    function mintTokenFromWeb(uint256 tokenQuantity) external payable
    {
        require(totalSupply + tokenQuantity <= MAX_AMOUNT, "sold out!");
        require(LISTING_PRICE * tokenQuantity <= msg.value, "send more eth!");
        require(balanceOf(msg.sender)+ tokenQuantity <= MAX_TOKENS_PER_ACCOUNT, "max token = 3 for you account");

        //user mints less than 3 tokens

        for(uint256 i = 0; i<tokenQuantity; i++)
        {
            _safeMint(msg.sender, ++totalSupply);
        }
    }

//if stuck in contract
    function withdraw(address treasury) external payable onlyOwner{
        require(payable(treasury).send(address(this).balance));
    }

}
















