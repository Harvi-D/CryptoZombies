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

    //function references (arrays, strings, structs, mappings) need declaration of where variable is stored ie: memory; convention dictates that function parameter variable names start with an underscore ie: _varaibleName;
    function createZombie(string memory _name, uint256 _dna) public {
        //array.push() method
        zombies.push(Zombie(_name, _dna));
    }

    //private view-function for generating a 16 digit dna; accepts a string
    function _generateRandomDna(string memory _str)
        private
        view
        returns (uint256)
    {}
}
