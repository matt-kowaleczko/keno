pragma solidity ^0.8.7;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/RandomNumberConsumer.sol";

contract TestRandomNumberConsumer {
    // The address of the adoption contract to be tested
    RandomNumberConsumer randNumber = RandomNumberConsumer(DeployedAddresses.RandomNumberConsumer());

    // The id of the pet that will be used for testing
    
    uint expectedNumber = 0;

    function testRandNumber() public {
        uint randResult = randNumber.randomResult();
        Assert.equal(randResult, expectedNumber, "rand_number numeric");
    }
}
