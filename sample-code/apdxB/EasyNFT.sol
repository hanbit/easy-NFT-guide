pragma solidity ^0.5.6;
import "https://github.com/hanbit/easy-nft-guide/blob/main/sample-code/apdxB/EasyNFT.sol";
/**
 * 이 아래부터는 우리가 구현할 NFT의 구현입니다.
 * 직접 옮겨쓰거나 복사-붙여넣기합시다.
 */

contract EasyNFTs is KIP17Full, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() public KIP17Full("EasyNFT", "ENFT") {}

    function mintNFT(string memory tokenURI)
        public
        onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}