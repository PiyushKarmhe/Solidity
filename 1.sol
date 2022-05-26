// Solidity program to demonstrate
// how to create a contract
///@custom:dev-run-script file_path
pragma solidity ^0.4.24;

// Creating a contract
contract Test {
	
    // Declaring variable
    string str;

    // Defining a constructor
    constructor() public{
        str = "Piyush";
    }

    // Defining a function to
    // return value of variable 'str'
    function str_out() public view returns(string memory){
        return str;
    }

    function str_in(string _str) public {
        str = _str;
    }
}
