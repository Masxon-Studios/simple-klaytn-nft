// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@klaytn/contracts/KIP/token/KIP17/extensions/KIP17URIStorage.sol";
import "@klaytn/contracts/access/Ownable.sol";

contract NFTMinter is KIP17URIStorage, Ownable {
    uint256 private _tokenIds;
    uint256 public maxSupply;
    address public deployerAddress;

    event Minted(address indexed recipient, uint256 tokenId, string newTokenURI);
    event MaxSupplyUpdated(uint256 newMaxSupply);

    constructor(uint256 _maxSupply) KIP17("NFTMinter", "NFT") {
        maxSupply = _maxSupply;
        deployerAddress = msg.sender;
    }

    function mintNFT(address recipient, string memory newTokenURI)
        public
        returns (uint256)
    {
        require(_tokenIds < maxSupply, "Max supply reached");
        _tokenIds++;

        uint256 newItemId = _tokenIds;
        _safeMint(recipient, newItemId);
        _setTokenURI(newItemId, newTokenURI);

        emit Minted(recipient, newItemId, newTokenURI);

        return newItemId;
    }

    function updateTokenURI(uint256 tokenId, string memory newTokenURI) public onlyOwner {
        _setTokenURI(tokenId, newTokenURI);
    }

    function setMaxSupply(uint256 _maxSupply) external onlyOwner {
        require(_maxSupply > _tokenIds, "New max supply must be greater than current supply");
        maxSupply = _maxSupply;
        emit MaxSupplyUpdated(_maxSupply);
    }

    function totalSupply() public view returns (uint256) {
        return _tokenIds;
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(KIP17URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function getDeployerAddress() public view returns (address) {
        return deployerAddress;
    }
}