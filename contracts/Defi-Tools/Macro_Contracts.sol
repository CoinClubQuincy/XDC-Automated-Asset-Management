// SPDX-License-Identifier: GPL-3.0

/// @title Futures Contract
/// @author R Quincy Jones
/// @notice This is an automated futures contract
/// @dev This contract takes in a data schema and triggers contitions based on the input data

pragma solidity >=0.8.2 <0.9.0;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
//Smart contract
contract MACRO {
    string private inputSchema;
    constructor(string memory _Schema) {
            inputSchema = _Schema;
    }

    modifier Validate(){
        //Validate schema
        require(bytes(inputSchema).length > 0,"Schema must be defined");
        _;
    }
    function modifySchema() public returns(string memory){
        return inputSchema;
    }
} 

