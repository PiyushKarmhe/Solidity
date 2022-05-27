// Solidity program to demonstrate
// how to create a contract
///@custom:dev-run-script file_path
pragma solidity ^0.5.1;

// Creating a contract
contract Test {
    
    mapping(address => uint256) public balance;
    address payable wallet;

    constructor(address payable _wallet) public{
        wallet = _wallet;
    }

    function() external payable{
        buyToken();
    }
    
    function buyToken() public payable{
        //buy token
        balance[msg.sender] +=1;
        wallet.transfer(msg.value);
        //send ether to the wallet
    }
}
