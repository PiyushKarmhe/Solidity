// Solidity program to demonstrate
// how to create a contract
///@custom:dev-run-script file_path
pragma solidity ^0.5.1;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balance;

    constructor(string memory _name) public{
        name = _name;
    }

    function mint() public{
        balance[tx.origin] ++;
    }
}

// Inheritance
contract MyToken is ERC20Token{
    // string public name = "My Token";
    string public symbol;
    address[] public owners;
    uint256 ownerCount;


    constructor(
        string memory _name,
        string memory _symbol
        ) ERC20Token(_name) public{
        symbol = _symbol;
    } 

    function mint() public{
        super.mint();
        ownerCount++;
        owners.push(msg.sender);
    }
}

