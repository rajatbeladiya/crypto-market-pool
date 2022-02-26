// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract AddressBook {

    struct Record {
        address accountAddress;
        string accountHolder;
    }

    mapping(address => Record[]) public records;
    
    function addRecord(address _address, string memory _alias) public {
        records[msg.sender].push(Record({ accountAddress: _address, accountHolder: _alias }));
    }

    function getRecords() public view returns (Record[] memory) {
        return records[msg.sender];
    }


}
