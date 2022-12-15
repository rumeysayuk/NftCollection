//SPDX-License-Identifier: MIT
pragma solidity 0.8.17 ;

//import the standard implementation of the ERC721 token
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Contract "NFTee" _IS_ and "ERC721" contract
contract NFTee is ERC721 {
    //Create an ERC721 contract
    //Mint some NFTs form myself
    constructor() ERC721("RuMeysa TEst Token", "RuMila") {
        //mint 5 nft  to myself
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 4);
        _mint(msg.sender, 5);
    }
}
