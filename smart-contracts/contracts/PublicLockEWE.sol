// SPDX-License-Identifier: MIT
/* solhint-disable no-inline-assembly */
pragma solidity ^0.8.21;

import "./PublicLock.sol";

contract PublicLockEWE is PublicLock {
  mapping(uint256 => uint256) public totalTradingVolume;

  function setTotalTradingVolume(uint256 _tokenId, uint256 _volume) external {
    totalTradingVolume[_tokenId] = _volume;
  }
}