// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ArrayManipulation.sol";

contract ArrayHandler {
    
    using ArrayManipulation for uint[];

    uint[] public numbers;

    constructor(uint[] memory _numbers) {
        numbers = _numbers;
    }

    function sortNumbers() public {
        numbers.sort();
    }

    function removeDuplicatesFromNumbers() public {
        numbers.removeDuplicates();
    }
}
