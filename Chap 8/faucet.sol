pragma solidity ^0.8.0;

contract Faucet {
    function withdraw(uint withdraw_amount)public {
        require(withdraw_amount <= 100000000000000000);

        mmsg.sender.transfer(withdraw_amount);

        receive () external payable {}
    }
    function () public payable {}
}