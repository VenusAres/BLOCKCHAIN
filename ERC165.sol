//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHello {
    function hello(uint a , uint b) external;
    function world() external;
}

contract Hello {
    function getInterfaceId() public pure returns(bytes4) {
        return type(IHello).interfaceId;
    }
    function getSelector() public pure returns(bytes4)  {
        return IHello.hello.selector ^ IHello.world.selector;
    }
    function getKeccak() public pure returns(bytes4) {
        return bytes4(keccak256("hello(uint256,uint256)")^bytes4(keccak256("world()")));
    }
}
