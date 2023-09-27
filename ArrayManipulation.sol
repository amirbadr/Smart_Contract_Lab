// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library ArrayManipulation {
    
    // Bubble sort implementation
    function sort(uint[] storage arr) internal {
        uint n = arr.length;
        for (uint i = 0; i < n-1; i++) {
            for (uint j = 0; j < n-i-1; j++) {
                if (arr[j] > arr[j+1]) {
                    // swap arr[j] and arr[j+1]
                    uint temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                }
            }
        }
    }

    function removeDuplicates(uint[] storage arr) internal {
        if (arr.length == 0) return;

        sort(arr);
        uint uniqueCount = 1;

        for (uint i = 1; i < arr.length; i++) {
            if (arr[i] != arr[i-1]) {
                arr[uniqueCount] = arr[i];
                uniqueCount++;
            }
        }

        while (arr.length > uniqueCount) {
            arr.pop();
        }
    }
}
