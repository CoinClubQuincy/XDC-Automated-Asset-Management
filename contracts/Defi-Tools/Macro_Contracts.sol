// SPDX-License-Identifier: GPL-3.0

/// @title MACRO Contract
/// @author R Quincy Jones
/// @notice This is a template that automated a set of conditions based on input data
/// @dev This contract takes in a data schema and triggers contitions based on the input data

pragma solidity >=0.8.2 <0.9.0;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MACRO {
    bool public initialized = false;
    uint public schemaCount = 0;
    Schema[] public schemaHistory;

    struct Schema {
        History[] history;
    }
    struct History{
        string[] schema;
    }

    function initialize(string[] memory _Schema) {
        require(initialized == false,"Contract already initialized");
        schemaHistory[schemaCount].schema = _Schema;
        schemaCount++;
        initialized = true
    }

    modifier Validate(string memory _inputSchema){
        require(bytes(_inputSchema).length > 0,"Schema must be defined");
        _;
    }

    function modifySchema(int _index,string memory _data) public returns(string memory){
        require(_index <= schemaCount,"Index out of range");
        schemaHistory[_index] = _data;
        return schemaHistory[_index];
    }

    function viewAllSchemaHistory() public view returns(History[] memory){
        return schemaHistory;
    }

    function viewCurrentSchema() public view returns(string[] memory){
        return schemaHistory[schemaCount].schema;
    }
} 

