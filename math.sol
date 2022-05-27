pragma solidity ^0.5.1;

library Math {
    function divide(uint256 a, uint256 b) internal pure returns(uint256){
       require(b>0);
       uint c = a/b;
       return c;
    }
}