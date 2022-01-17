// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.12;
//pragma solidity ^0.5.0;

// See Petshop tuturial for details of below.
// https://trufflesuite.com/tutorial/

contract Adoption {
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint256 petId) public returns (uint256) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
