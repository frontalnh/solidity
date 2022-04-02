// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract NH1155 is ERC1155, Ownable, ERC1155Burnable {    
    constructor() ERC1155("") {}
    string private _baseMetadataURI;
    string public name = "NH1155";
    mapping (uint256 => string) private _uris;

    /**
    * @dev Will update the base URL of token's URI
    * @param _newBaseMetadataURI New base URL of token's URI
    */
    function setBaseMetadataURI(
        string memory _newBaseMetadataURI
    ) public onlyOwner {
        _baseMetadataURI = _newBaseMetadataURI;
    }

    function setBaseMetadataUri(string memory _uri) public onlyOwner {
        _baseMetadataURI = _uri;
    }

    function uri(uint256 _tokenId) override public view returns(string memory) {
        return string(
            abi.encodePacked(
                _baseMetadataURI,
                Strings.toString(_tokenId),
                ".json"
            )
        );
    }

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public {
        _mintBatch(to, ids, amounts, data);
    }
}