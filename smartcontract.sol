pragma solidity ^0.5.3;

contract Contract {
    string public txt;

    function set(string memory _text) public{
        txt = _text;

    }
    function get() public view returns (string memory) {
        return txt;

    }

}