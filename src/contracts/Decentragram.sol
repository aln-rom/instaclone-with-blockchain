// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Decentragram {
    string public name = "Decentragram";

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

}
