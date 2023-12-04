// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Decentragram {
    string public name = "Decentragram";
    uint public imageCount = 0;

    // store Image
    mapping(uint => Image) public images;

    struct Image {
        uint id;
        string hash;
        string description;
        uint tipAmount;
        address payable author;
    }

    event ImageCreated(
        uint id,
        string hash,
        string description,
        uint tipAmount,
        address payable author
    );

    event ImageTipped(
        uint id,
        string hash,
        string description,
        uint tipAmount,
        address payable author
    );

    constructor() public {
        name = "Decentragram";
    }

    function uploadImage(string memory _imgHash, string memory _description) public {
        // Increment image id
        imageCount ++;

        // Add Image to the contract
        images[imageCount] = Image(imageCount, _imgHash, _description, 0, msg.sender);
        // Trigger an event
        emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender);
    }
}
