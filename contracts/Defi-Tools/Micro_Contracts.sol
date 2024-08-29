// SPDX-License-Identifier: GPL-3.0

/// @title MICRO Contract
/// @author R Quincy Jones
/// @notice This is a template that sets parameters and passes them to other contracts
/// @dev This contract takes in a data schema and triggers contitions based on the input data

pragma solidity >=0.8.2 <0.9.0;
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "./GeneralDeployer.sol";

contract MICRO is ManagerDeployer {
    bool public initialized = false;
    Parameters public parameters;
    struct Parameters {
        uint256 transacted_funds_rate;
        uint256 liquid_invoice_intrest_rate;
    }
    function initialize(uint set_transacted_funds_rate, uint set_liquid_invoice_intrest_rate) public returns(bool) {
        require(!initialized, "Already initialized");
        Parameters.transacted_funds_rate = set_transacted_funds_rate;
        Parameters.liquid_invoice_intrest_rate = set_liquid_invoice_intrest_rate;
        initialized = true;
        singleDeployerActive = false;
        return true;
    }  
    function view_single_parameter(string memory parameter) public view returns (Parameters) {
        if (keccak256(abi.encodePacked(parameter)) == keccak256(abi.encodePacked("transacted_funds_rate"))) { return Parameters.transacted_funds_rate; }
        if (keccak256(abi.encodePacked(parameter)) == keccak256(abi.encodePacked("liquid_invoice_intrest_rate"))) { return Parameters.liquid_invoice_intrest_rate; }
        else { revert("Parameter not found"); }
    }
    function view_all_parameters() public view returns (Parameters memory) {
        return Parameters;
    }
    function set_single_parameter(string memory parameter, uint256 value) public returns(Parameters) {
        if (keccak256(abi.encodePacked(parameter)) == keccak256(abi.encodePacked("transacted_funds_rate"))) { Parameters.transacted_funds_rate = value; }
        if (keccak256(abi.encodePacked(parameter)) == keccak256(abi.encodePacked("liquid_invoice_intrest_rate"))) { Parameters.liquid_invoice_intrest_rate = value; }
        else { revert("Parameter not found"); }
    }
}