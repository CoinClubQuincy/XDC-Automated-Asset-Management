// SPDX-License-Identifier: GPL-3.0

/// @title MACRO Contract
/// @author R Quincy Jones
/// @notice This is an automated futures contract
/// @dev This contract takes in a data schema and triggers contitions based on the input data

pragma solidity >=0.8.2 <0.9.0;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MACRO {
    string[] public inputSchema;

    constructor(string[] memory _Schema) {
            inputSchema = _Schema;
    }
    modifier Validate(){
        require(bytes(inputSchema).length > 0,"Schema must be defined");
        _;
    }
    function modifySchema(int _index,string memory _data) public returns(string memory){
        inputSchema[_index] = _data;
        return inputSchema;
    }
} 

