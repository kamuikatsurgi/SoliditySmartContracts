// SPDX-Licensed-Verified : MIT

pragma solidity ^0.8.0 ; 

contract FavouriteCricketer{

    string public cricketer;

    function setCricketer(string memory _fav) public {
        cricketer = _fav;
    }

    function getCricketer() public view returns(string memory){
        return cricketer;
    }

    function getrandomFromFavCricketer(string memory _fav) public view returns(uint){
        return uint(keccak256(abi.encodePacked(_fav)));
    }
}
