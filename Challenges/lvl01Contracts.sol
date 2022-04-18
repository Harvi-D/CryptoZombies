//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.13; // solidity version

contract ZombieFactory {
    //make a 16 digit variable for zombie appearence
    uint256 dnaDigits = 16;
    //ensure Zombie's DNA is only 16 characters
    uint256 dnaModulus = 10**dnaDigits;
}
