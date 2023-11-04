// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public token_name = "Atul";
    string public token_abbr = "KR";
    uint public total_supply = 0;

    // mapping variable here
    mapping(address => uint) public bal;

    // mint function
    function mint(address _Addr, uint _Val) public {
        total_supply += _Val;
        bal[_Addr] += _Val;
    }

    // burn function
    function burn(address _Addr, uint _Val) public {
        if(bal[_Addr] >= _Val) {
            total_supply -= _Val;
            bal[_Addr] -= _Val;
    }
    }
}
