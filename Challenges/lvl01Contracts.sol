//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.13; // solidity version

contract ZombieFactory {
    //make a 16 digit variable for zombie appearence
    uint256 dnaDigits = 16;
    //ensure Zombie's DNA is only 16 characters
    uint256 dnaModulus = 10**dnaDigits;
    //struct: looks like a class in JS... kind of
    struct Zombie {
        string name;
        uint256 dna;
    }
    //Arrays: can use 'fixedArray'(uint[3] fixedArray; / string[5] fixedArray;), 'dynamicArray'(uint[] dynamicArray;), and public arrays (example below: allows to read, not write; store public data)
    //public array of structs for zombies
    Zombie[] public zombies;
}
