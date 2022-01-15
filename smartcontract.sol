pragma solidity ^0.5.3;

contract Contract {
    //string public txt;
    uint public oneWei = 1 wei;
    uint public oneEther = 1 ether;
    uint public i = 0;

   /* function set(string memory _text) public{
        txt = _text;
    }
    function get() public view returns (string memory) {
        return txt;
    }*/
    function testOneWei() public pure returns (bool)
    {return 1 wei == 1;}

    function testOneEther() public pure returns (bool)
    {return 1 ether == 1e18 wei;}

    function gasRefund() public returns (uint)
    {
        return tx.gasprice; //fixed at 1 wei
    }

    function loop() public {
        while(true)
        {
            i+=1;
        }
    }
    

}