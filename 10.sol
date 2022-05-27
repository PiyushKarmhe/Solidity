// Solidity program to demonstrate
// how to create a contract
///@custom:dev-run-script file_path
pragma solidity ^0.5.1;

// Creating a contract
contract Test {
    
    mapping(address => uint256) public balance;
    address payable wallet;
    
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    ); 

    constructor(address payable _wallet) public{
        wallet = _wallet;
    }

    function() external payable{
        buyToken();
    }
    
    function buyToken() public payable{
        //buy token
        balance[msg.sender] +=1;
        //send ether to the wallet
        wallet.transfer(msg.value);

        emit Purchase(msg.sender, 1);
    }
}
