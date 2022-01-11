pragma solidity ^0.5.3;

contract Contract {
    string public text;

    function set(string memory _text) public{
        text = _text;

    }
    function get() public view returns (string memory) {
        return text;

    }

}