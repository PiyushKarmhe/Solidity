// Solidity program to demonstrate
// how to create a contract
///@custom:dev-run-script file_path
pragma solidity ^0.5.1;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balance;

    function mint() public{
        balance[tx.origin] ++;
    }
}

// Creating a contract
contract Test {
    
    address payable wallet;
    address public token;

    constructor(address payable _wallet, address _token) public{
        wallet = _wallet;
        token = _token;
    }

    function() external payable{
        buyToken();
    }
    
    function buyToken() public payable{
        //calling contract
        ERC20Token _token = ERC20Token(address(token));
        //ERC20Token(address(token)).mint();
        //minting
        _token.mint();
        wallet.transfer(msg.value);
    }
}
