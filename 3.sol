// Solidity program to demonstrate
// how to create a contract
///@custom:dev-run-script file_path
pragma solidity ^0.5.1;

// Creating a contract
contract Test {
	Person[] public people;
    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public{
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
}
