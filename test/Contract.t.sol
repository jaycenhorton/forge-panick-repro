// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "forge-std/Test.sol";

contract Contract is Test {
  function setUp() external {
    vm.startPrank(address(1));
    // vm.stopPrank(); // uncomment this to fix
  }

  function test() external {
    // vm.stopPrank(); // OR uncomment this to fix
    payable(address(2)).transfer(1);
    // vm.stopPrank(); // uncommenting this will NOT fix
  }
}