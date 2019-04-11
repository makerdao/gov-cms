pragma solidity ^0.5.4;

import "ds-test/test.sol";

import "./cms.sol";

contract CmsTest is DSTest {
    Cms cms;

    function setUp() public {
        cms = new Cms();
    }

    function test_register() public {
        address proposal = address(0x0);
        string memory content = "QmQxsTs6hppWktJhakDEDyDdMfjdsskSRM7qEQMMKWbvV1";
        cms.register(proposal, content);

        assertEq0(bytes(cms.proposals(proposal)), bytes(content));
    }
}
