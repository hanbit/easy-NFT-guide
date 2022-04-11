pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


contract NFTFD is ERC721URIStorage {
    address public founder;
    
    constructor() ERC721("NFTs for Dummies", "NFTFD"){
        founder = msg.sender;
        
        for (uint tokenID=1; tokenID<=5; tokenID++) {
            _mint(founder, tokenID);
            _setTokenURI(tokenID, "NFTFD Limited Edition Initial Release");
        }
    }
    
    function mintNFT(address to, uint256 tokenID, string memory tokenURI) public {
        require(msg.sender == founder, "not an authorized minter");
        _mint(to, tokenID);
        _setTokenURI(tokenID, tokenURI);
    }
}

