//EVM, Ethereum virtual machine
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.27;

contract Simple{
    uint256 myFavNumber;

    struct Person{
        uint256 favNumber;
        string name;
    }
    //dynamic array
    Person[] public listOfPeople;
    
    mapping(string => uint256) public nameToFavNumber;
    
    function store(uint256 _favNumber) public {
        myFavNumber = _favNumber;
    }

    //view,pure
    function retrieve() public view returns(uint256){
        return myFavNumber;
    }

    //calldata ,memory,storage
    function addPerson(String memory _name,uint256 _favNumber) public {
        listOfPeople.push( Person( _favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}